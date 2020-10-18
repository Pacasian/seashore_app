import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seashore_app/Tabs/resturant.dart';
import 'package:seashore_app/colors.dart';
import 'Tabs/menu.dart';
import 'Tabs/rooms.dart';
import 'Tabs/profile.dart';
import 'Tabs/party_halls.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController;
  int pageIndex = 0;

  // To keep track of the selected page

  @override
  void dispose() {
    // pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 0,
    );
  }

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  // Tap function from BottomNavigation to change the page
  onTap(int pageIndex) {
    pageController.jumpToPage(
      pageIndex,
    );
  }

  List<Tab> _tabs = <Tab>[
    Tab(
      child: CircleAvatar(
        radius: 5,
        backgroundColor: Colors.red,
      ),
    ),
    Tab(
      child: CircleAvatar(
        radius: 5,
        backgroundColor: Colors.red,
      ),
    ),
    Tab(
      child: CircleAvatar(
        radius: 5,
        backgroundColor: Colors.red,
      ),
    ),
    Tab(
      child: CircleAvatar(
        radius: 5,
        backgroundColor: Colors.yellow,
      ),
    ),
  ];
  final List<Widget> _children = [
    Restaurant(),
    Rooms(),
    PartyHalls(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Added
      initialIndex: 0, //Added
      child: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Seashore',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: mainGold,
                  ),
                  onPressed: null),
              IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: mainGold,
                  ),
                  onPressed: null),
              SizedBox(
                width: 5,
              )
            ],
            bottom: TabBar(
              labelColor: mainGreen,
              unselectedLabelColor: mainGold,
              indicatorColor: mainGold,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.restaurant_menu_rounded,
                    color: mainGreen,
                    size: 36,
                  ),
                  text: "Restaurant",
                ),
                Tab(
                  icon: Icon(
                    Icons.local_hotel_rounded,
                    color: mainGreen,
                    size: 36,
                  ),
                  text: "Rooms",
                ),
                Tab(
                  icon: Icon(
                    Icons.deck_rounded,
                    color: mainGreen,
                    size: 36,
                  ),
                  text: "Party Halls",
                ),
                Tab(
                  icon: Icon(
                    Icons.local_taxi_rounded,
                    color: mainGreen,
                    size: 36,
                  ),
                  text: "Others",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: _children,
          ),
        ),
      ),
    );
  }
}

/*PageView(
        children: [
          Menu(),
          Offers(),
          Orders(),
          Profile(),
        ],
        controller: pageController,
        // initializing the page controller in pageView
        onPageChanged: onPageChanged,
        // function to extract the changed pageIndex from theb bottomNavigationIems
        physics: NeverScrollableScrollPhysics(),
        // Not scroll sideways
      )*/

/*bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: mainGreen,
          currentIndex: pageIndex,
          iconSize: 35,
          unselectedItemColor: mainGold,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book_rounded,
              ),
              label: 'MENU',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_offer_rounded,
              ),
              label: 'OFFER',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.room_service_rounded,
              ),
              label: 'ORDERS',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded,
              ),
              label: 'PROFILE',
            ),
          ]),*/

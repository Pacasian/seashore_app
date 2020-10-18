import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seashore_app/Pages/roomsIndependent.dart';
import 'package:seashore_app/Tabs/profile.dart';
import 'package:seashore_app/colors.dart';

class Rooms extends StatefulWidget {
  @override
  _RoomsState createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  List<String> roomImages = [
    'assets/bookroom.jpeg',
    'assets/bookroom2.jpeg',
    'assets/bookroom3.jpeg'
  ];
  List<String> roomTitle = [
    'Executive Suites',
    'Deluxe Suites',
    'Double Deluxe Suites'
  ];
  List<String> roomPrice = ['Rs.10000', 'Rs.15000', 'Rs.20000'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.0,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                shrinkWrap: false,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, int index) {
                  return GestureDetector(
                    onTap: () {
                      print(index.toString());
                      return Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RoomsIndependent(
                            'index',
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          // width: MediaQuery.of(context).size.width * 0.88,
                          height: 200,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage(roomImages[index]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Opacity(
                                  opacity: 0.6,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.93,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: ListTile(
                                      title: Text(
                                        roomTitle[index],
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  right: 10,
                                  bottom: 40,
                                  child: Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Container(
                                      width: 105,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: mainGreen,
                                      ),
                                      child: Center(
                                        child: Text(
                                          roomPrice[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 0.8,
                                              fontStyle: FontStyle.italic,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 3,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 20.0,
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}

/*Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 30.0,
            ),

          ],
        ),*/

/*Center(
                            child: Text(
                              'Executive Suites',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),*/

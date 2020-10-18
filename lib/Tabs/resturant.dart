import 'package:flutter/material.dart';
import 'package:seashore_app/Tabs/rooms.dart';
import 'package:seashore_app/colors.dart';

class Restaurant extends StatefulWidget {
  @override
  _RestaurantState createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  List<String> title = [];
  ListTile modelTile(int index) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.purple,
      ),
      title: Text('good'),
    );
  }

  ListTile appetizersTile(int index) {
    return ListTile(
      title: Text('good'),
    );
  }

  int count = 3;
  List<String> appetizersName = [
    'Crispy Fried Vegetables ',
    'Shrimps Cocktail ',
    'Calamari Fritters',
    'Pappad Chicken Finger,'
        'Chicken Tempura',
    'Vegetable Spring Roll',
    ' Tap Fitting, '
  ];
  List<String> serviceName = [
    ' Tank Fitting, ',
    ' Tap Fitting, ',
    ' Tap Fitting, '
  ];
  List<String> helperName = [' Sumith, ', ' Dithesh, ', ' Ajay, '];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                color: Colors.red,
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Popular :',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                  letterSpacing: 1.1,
                  color: mainGreen,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, int index) {
                      return modelTile(index);
                    },
                    itemCount: count + 3,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Helper',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                  letterSpacing: 1.1,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, int index) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          '*',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.red,
                              fontSize: 16),
                        ),
                      ),
                      Text(
                        helperName[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 16),
                      ),
                    ],
                  );
                },
                itemCount: count,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, int index) {
                      return appetizersTile(index);
                    },
                    itemCount: count + 3,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        )),
      ),
    );
  }
}

/* Expanded(
                child: ListView.builder(
                  shrinkWrap: false,
                  itemBuilder: (context, int index) {
                    return ListTile(
                      leading: Icon(Icons.account_circle_rounded),
                      title: Text('index$index'),
                    );
                  },
                  itemCount: 10,
                ),
              ),
              Expanded(
                  child: Container(
                color: Colors.yellow,
                height: 100,
              ))*/

import 'package:flutter/material.dart';

import '../colors.dart';

// ignore: must_be_immutable
class RoomsIndependent extends StatefulWidget {
  String data;
  RoomsIndependent(data);

  @override
  _RoomsIndependentState createState() => _RoomsIndependentState(this.data);
}

class _RoomsIndependentState extends State<RoomsIndependent> {
  String data;
  _RoomsIndependentState(this.data);
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
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(roomImages[0]),
                  fit: BoxFit.cover,
                )),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30.0),
                  ),
                ),
                child: Column(),
              ),
            ),
            Positioned(
                right: 30,
                bottom: MediaQuery.of(context).size.height * 0.52,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    width: 105,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: mainGreen,
                    ),
                    child: Center(
                      child: Text(
                        "d" + data.toString(),
                        // roomPrice[i],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.8,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

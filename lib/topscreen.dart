import 'package:flutter/material.dart';

final firstColor = Color(0xffc10000);
final secondColor = Colors.red;

class topscreen extends StatelessWidget {
  const topscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      child: Stack(children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
              color: Colors.red,
              gradient: LinearGradient(colors: [firstColor, secondColor]),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 10),
                )
              ]),
        ),
        Positioned(
          top: 70,
          bottom: 0,
          left: 20,
          right: 20,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 60,
                    ),
                    Expanded(
                      flex: 5,
                      child: Center(
                        child: Text(
                          "Blood Recuests",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.person,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 0.5),
                        blurRadius: 10,
                      )
                    ]),
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "291",
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Montserrat'),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "-12%",
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Montserrat'),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Available",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black87,
                                            fontFamily: 'Montserrat')),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "-49%",
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Montserrat'),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "481",
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Montserrat'),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Recuests",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black87,
                                            fontFamily: 'Montserrat')),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

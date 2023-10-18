import 'package:blood_donation/requestlist.dart';
import 'package:flutter/material.dart';
import 'package:blood_donation/topscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myhome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Myhome extends StatelessWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black12,
        child: Column(
          children: [
            topscreen(),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(32, 16, 32, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Recent Updates',
                    style: TextStyle(fontFamily: 'Montserrat'),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'Montserrat'),
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              child: requestlist(),
            ),
          ],
        ),
      ),
    );
  }
}

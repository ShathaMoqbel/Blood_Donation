import 'package:flutter/material.dart';

class Datab {
  final String name, bloodtype, gender;
  final int age, distance, waitingHours;

  Datab(this.name, this.bloodtype, this.age, this.gender, this.distance,
      this.waitingHours);
}

final List<Datab> _request = [
  Datab("Shatha", 'B+', 21, 'Female', 10, 12),
  Datab('Moqbel', 'O-', 33, 'Male', 28, 24),
  Datab("Shatha", 'B+', 21, 'Female', 10, 12),
  Datab('Moqbel', 'O-', 33, 'Male', 28, 24),
  Datab("Shatha", 'B+', 21, 'Female', 10, 12),
  Datab('Moqbel', 'O-', 33, 'Male', 28, 24),
  Datab("Shatha", 'B+', 21, 'Female', 10, 12),
  Datab('Moqbel', 'O-', 33, 'Male', 28, 24),
];
final firstColor = Color(0xffc10000);
final secondColor = Colors.red;

class requestlist extends StatelessWidget {
  const requestlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(16),
      itemCount: _request.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 150,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(61, 62, 63, 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 80,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8)),
                        color: Colors.red,
                        gradient:
                            LinearGradient(colors: [firstColor, secondColor]),
                      ),
                      child: Center(
                        child: Text(
                          'URGENT',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      child: Center(
                        child: Text(
                          _request[index].bloodtype,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 52,
                    padding: EdgeInsets.all(16),
                    child: Text(
                      _request[index].name,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: Row(
                      children: [
                        Text(_request[index].age.toString(),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          width: 5,
                        ),
                        Text('.'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(_request[index].gender.toString(),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          width: 5,
                        ),
                        Text('.'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(_request[index].distance.toString(),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          width: 5,
                        ),
                        Text('.'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(_request[index].waitingHours.toString(),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          color: Colors.white12,
        );
      },
    );
  }
}

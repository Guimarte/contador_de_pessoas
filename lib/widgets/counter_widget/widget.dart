import 'package:flutter/material.dart';

class People extends StatefulWidget {
  People({Key? key}) : super(key: key);

  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  int _peopleCounter = 0;
  String _textEntrace = "Pode entrar";

  void counter(int delta) {
    setState(() {
      _peopleCounter += delta;
      if (_peopleCounter < 0) {
        _textEntrace = "Mundo invertido";
      } else if (_peopleCounter >= 10) {
        _textEntrace = "Lotado";
      } else {
        _textEntrace = "Pode entrar";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          '/images/restaurant.jpg',
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Pessoas: $_peopleCounter",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, decoration: TextDecoration.none),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      counter(1);
                    },
                    child: Text(
                      "+1",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    )),
                TextButton(
                  onPressed: () {
                    counter(-1);
                  },
                  child: Text(
                    "-1",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                )
              ],
            ),
            Text(
              _textEntrace,
              style: TextStyle(
                  color: Colors.white, decoration: TextDecoration.none),
            )
          ],
        )
      ],
    );
  }
}

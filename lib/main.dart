import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Pessoas: 0",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "+1",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "+1",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Text(
              "Pode Entrar!",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}

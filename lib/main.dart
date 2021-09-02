import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "contador de pessoas",
      home: Stack(
        children: [
          Image.asset(
            "assets/images/restaurant",
            fit: BoxFit.cover,
            height: 10000,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Pessoas: 0",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "+1",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "+1",
                        style: TextStyle(fontSize: 30),
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
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}

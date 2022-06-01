import 'dart:math';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: const EdgeInsets.only(left: 8.0, top: 5.0),
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  const Expanded(
                      child: Text(
                    "Hello Flutter World",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    "Lucky number = ${generateLuckyNumber()}",
                    textDirection: TextDirection.ltr,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ))
                ],
              ),
              Row(
                children: <Widget>[
                  const Expanded(
                      child: Text(
                    "Hello Flutter World",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    "Lucky number = ${generateLuckyNumber()}",
                    textDirection: TextDirection.ltr,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ))
                ],
              ),
              Icon()
            ])));
  }

  int generateLuckyNumber() {
    var random = Random();
    int luckyNumber = random.nextInt(10);

    return luckyNumber;
  }
}

class Icon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage icon = const AssetImage('images/active-search.png');
    Image con = Image(image: icon);

    return Container(
      child: con,
    );
  }
}

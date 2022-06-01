import "package:flutter/material.dart";
import 'package:flutter_tex/flutter_tex.dart';
import 'package:high_academy/app_screen/MyButton.dart';

void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatefulWidget {
  MyFlutterApp({Key? key}) : super(key: key);

  @override
  State<MyFlutterApp> createState() => _MyFlutterAppState();
}

class _MyFlutterAppState extends State<MyFlutterApp> {
  final List<String> buttons = [
    'C',
    'Del',
    '%',
    '/',
    '7',
    '8',
    '9',
    '*',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];

  String update = "";

  set(String up) {
    setState(() {
      if (up != "") {
        update += up;
      } else {
        update = up;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exploring UI widgets",
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body: Column(
          children: <Widget>[
            Expanded(
                child: Container(
                    margin: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(26, 24, 1, 153),
                      border: Border.all(
                        color: Color.fromARGB(40, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    margin: const EdgeInsets.all(8.0),
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Calculator App",
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.w900,
                                          color:
                                              Color.fromARGB(239, 132, 85, 241),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(20, 0, 0, 0),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    margin: const EdgeInsets.all(5.0),
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      update,
                                      style: const TextStyle(
                                          fontSize: 40.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              213, 255, 255, 255),
                                          wordSpacing: 2.0),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(20, 0, 0, 0),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      margin: const EdgeInsets.all(5.0),
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        update,
                                        style: const TextStyle(
                                            fontSize: 27.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                195, 248, 245, 255),
                                            wordSpacing: 2.0),
                                      )),
                                )
                              ],
                            ))))),
            Expanded(
              flex: 2,
              child: Container(
                child: Center(
                  child: GridView.builder(
                    itemCount: buttons.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4, childAspectRatio: 1.15),
                    itemBuilder: (BuildContext context, int index) {
                      return MyButton(
                        buttonText: buttons[index],
                        color: const Color.fromARGB(221, 89, 25, 207),
                        textColor: const Color.fromARGB(255, 216, 196, 250),
                        set: set,
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: file_names
import 'package:flutter/material.dart';
import 'package:high_academy/main.dart';

class MyButton extends StatefulWidget {
  final color;
  final textColor;
  final String buttonText;
  final Function set;

  MyButton(
      {this.color,
      this.textColor,
      required this.buttonText,
      required this.set});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  // double ans(){
  //   return 0.0;
  // };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            if (widget.buttonText.codeUnitAt(0) > 45 &&
                widget.buttonText.codeUnitAt(0) < 58) {
              widget.set(widget.buttonText);
            }
            if (widget.buttonText == "C") {
              widget.set("");
            }
            if (widget.buttonText == "ANS") {
              widget.set("");
            }
            if (widget.buttonText == "=") {
              widget.set("");
              // widget.set(ans().toString());
            }
          },
          child: Container(
            color: widget.color,
            child: Center(
              child: Text(
                widget.buttonText,
                style: TextStyle(
                    color: widget.textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

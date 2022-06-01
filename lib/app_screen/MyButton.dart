// ignore: file_names
import 'package:flutter/material.dart';

// import 'package:high_academy/main.dart';
double answer = 0;
double prev_answer = 0;
int opp = 0;
bool execute = false;

class MyButton extends StatefulWidget {
  final color;
  final textColor;
  final String buttonText;
  final Function set;
  final Function get;

  double ans(double exp, bool exec) {
    double w = 0;
    answer = exec
        ? prev_answer
        : answer == 0
            ? 1
            : answer;
    // print("${answer} ${exp} ${w}");
    switch (opp) {
      case 42:
        w = answer * exp;
        break;
      case 43:
        w = answer + exp;
        break;
      case 45:
        w = answer - exp;
        break;
      case 47:
        if (exp != 0) w = answer / exp;
        break;
      case 37:
        w = answer % exp;
        break;
      default:
        w = answer * exp;
        break;
    }
    print("${answer} ${exp} ${w}");
    prev_answer = answer;
    execute = true;
    answer = 0;
    return w;
  }

  MyButton({
    this.color,
    this.textColor,
    required this.buttonText,
    required this.set,
    required this.get,
  });

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            if (widget.buttonText.codeUnitAt(0) > 45 &&
                widget.buttonText.codeUnitAt(0) < 58 &&
                widget.buttonText.codeUnitAt(0) != 47) {
              widget.set(up: widget.buttonText, clear: execute);
              execute = false;
            }
            if (widget.buttonText == "C") {
              execute = false;
              widget.set(up: "0");
            }
            if (widget.buttonText == "+" ||
                widget.buttonText == "-" ||
                widget.buttonText == "/" ||
                widget.buttonText == "*" ||
                widget.buttonText == "%") {
              answer = widget.get();
              opp = widget.buttonText.codeUnitAt(0);
              widget.set(up: "0");
            }
            if (widget.buttonText == "ANS") {
              widget.set(up: prev_answer.toString(), clear: true);
            }
            if (widget.buttonText == "Del") {
              String u = widget.get().toString();
              print("${u.length}");
              if (u.length > 0) {
                print(u.length);
                // widget.set(up: u.substring(0, u.length - 1), clear: true);
              }
            }
            if (widget.buttonText == "=") {
              // widget.set("");
              widget.set(
                  up: widget.ans(widget.get(), execute).toString(),
                  clear: true);
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

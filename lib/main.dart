import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './widgets/calculator_button.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  CalculatorApp({Key? key}) : super(key: key);

  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  int firstNum = 0;
  int secondNum = 0;
  String history = '';
  String textToDisplay = '';
  String res = '';
  String operation = '';

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }

    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Calculator'),
        ),
        backgroundColor: Color(0xFF28527a),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  child: Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Text(
                        history,
                        style: GoogleFonts.rubik(
                          textStyle:
                              TextStyle(fontSize: 24, color: Color(0x66FFFFFF)),
                        ),
                      ))),
              Container(
                child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      textToDisplay,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(fontSize: 48, color: Colors.white),
                      ),
                    )),
                alignment: Alignment(1.0, 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    fillColor: 0xFF8acd0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: 'C',
                    fillColor: 0xFF8acd0,
                    textColor: 0xFF000000,
                    textSize: 24,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '<',
                    fillColor: 0xFFf4d160,
                    textColor: 0xFF000000,
                    textSize: 24,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '/',
                    fillColor: 0xFFf4d160,
                    textColor: 0xFF000000,
                    textSize: 24,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '9',
                    fillColor: 0xFF8acd0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '8',
                    fillColor: 0xFF8acd0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '7',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: 'X',
                    fillColor: 0xFFf4d160,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '6',
                    fillColor: 0xFF8acd0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '5',
                    fillColor: 0xFF8acd0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '4',
                    fillColor: 0xFF8a4cd0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '-',
                    fillColor: 0xFFf4d160,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '3',
                    fillColor: 0xFF8acd0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '2',
                    fillColor: 0xFF8acd0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '1',
                    fillColor: 0xFF8a4cd0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '+',
                    fillColor: 0xFFf4d160,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '+/-',
                    fillColor: 0xFF8a4cd0,
                    textColor: 0xFF000000,
                    textSize: 22,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '0',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '00',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '=',
                    fillColor: 0xFFf4d160,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

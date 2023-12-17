import 'components/button.dart';
import 'package:flutter/material.dart';
import 'components/zero_btn.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          userInput.toString(),
                          style: TextStyle(fontSize: 30, color: Colors.grey),
                        ),
                        Text(
                          answer.toString(),
                          style: TextStyle(fontSize: 80, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(children: [
                      myButton(
                        buttonColor: const Color(0xffA6A6A6),
                        title: 'AC',
                        onPressed: () {
                          userInput = '';
                          answer = '';
                          setState(() {});
                        },
                      ),
                      myButton(
                        buttonColor: const Color(0xffA6A6A6),
                        title: 'DEL',
                        onPressed: () {
                          userInput =
                              userInput.substring(0, userInput.length - 1);
                          setState(() {});
                        },
                      ),
                      myButton(
                        buttonColor: const Color(0xffA6A6A6),
                        title: '%',
                        onPressed: () {
                          userInput += '%';
                          setState(() {});
                        },
                      ),
                      myButton(
                        buttonColor: const Color(0xffff9f0c),
                        title: '÷',
                        onPressed: () {
                          userInput += '÷';
                          setState(() {});
                        },
                      ),
                    ]),
                    Row(children: [
                      myButton(
                        buttonColor: const Color(0xff333333),
                        title: '7',
                        onPressed: () {
                          userInput += '7';
                          setState(() {});
                        },
                      ),
                      myButton(
                        buttonColor: const Color(0xff333333),
                        title: '8',
                        onPressed: () {
                          userInput += '8';
                          setState(() {});
                        },
                      ),
                      myButton(
                        buttonColor: const Color(0xff333333),
                        title: '9',
                        onPressed: () {
                          userInput += '9';
                          setState(() {});
                        },
                      ),
                      myButton(
                        buttonColor: const Color(0xffff9f0c),
                        title: 'x',
                        onPressed: () {
                          userInput += 'x';
                          setState(() {});
                        },
                      ),
                    ]),
                    Row(children: [
                      myButton(
                        buttonColor: const Color(0xff333333),
                        title: '4',
                        onPressed: () {
                          userInput += '4';
                          setState(() {});
                        },
                      ),
                      myButton(
                        buttonColor: const Color(0xff333333),
                        title: '5',
                        onPressed: () {
                          userInput += '5';
                          setState(() {});
                        },
                      ),
                      myButton(
                        buttonColor: const Color(0xff333333),
                        title: '6',
                        onPressed: () {
                          userInput += '6';
                          setState(() {});
                        },
                      ),
                      myButton(
                        buttonColor: const Color(0xffff9f0c),
                        title: '-',
                        onPressed: () {
                          userInput += '-';
                          setState(() {});
                        },
                      ),
                    ]),
                    Row(children: [
                      myButton(
                        buttonColor: const Color(0xff333333),
                        title: '1',
                        onPressed: () {
                          userInput += '1';
                          setState(() {});
                        },
                      ),
                      myButton(
                        buttonColor: const Color(0xff333333),
                        title: '2',
                        onPressed: () {
                          userInput += '2';
                          setState(() {});
                        },
                      ),
                      myButton(
                        buttonColor: const Color(0xff333333),
                        title: '3',
                        onPressed: () {
                          userInput += '3';
                          setState(() {});
                        },
                      ),
                      myButton(
                        buttonColor: const Color(0xffff9f0c),
                        title: '+',
                        onPressed: () {
                          userInput += '+';
                          setState(() {});
                        },
                      ),
                    ]),
                    Row(children: [
                      ZeroButton(
                        buttonColor: const Color(0xff333333),
                        title: '0',
                        onPressed: () {
                          userInput += '0';
                          setState(() {});
                        },
                      ),
                      myButton(
                        buttonColor: const Color(0xff333333),
                        title: '.',
                        onPressed: () {
                          userInput += '.';
                          setState(() {});
                        },
                      ),
                      myButton(
                        buttonColor: const Color(0xffff9f0c),
                        title: '=',
                        onPressed: () {
                          equalPress();
                          setState(() {});
                        },
                      ),
                    ]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void equalPress() {
    var finalUserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel cm = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}

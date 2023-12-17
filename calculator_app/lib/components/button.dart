import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final Color buttonColor;
  final String title;
  final VoidCallback onPressed;
  const myButton(
      {Key? key,
      required this.buttonColor,
      required this.title,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            height: 75,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: buttonColor),
            child: Center(
                child: Text(
              title,
              style: const TextStyle(fontSize: 28, color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}

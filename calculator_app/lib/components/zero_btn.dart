import 'package:flutter/material.dart';

class ZeroButton extends StatelessWidget {
  final Color buttonColor;
  final String title;
  final VoidCallback onPressed;
  const ZeroButton(
      {Key? key,
      required this.buttonColor,
      required this.title,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            height: 75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: buttonColor),
            child: Center(
                child: Padding(
              padding: EdgeInsets.only(left: 35),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 28, color: Colors.white),
                ),
              ),
            )),
          ),
        ),
      ),
    );
  }
}

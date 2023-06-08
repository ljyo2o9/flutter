import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;

  const Button({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(60),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          vertical: 15,
          horizontal: 30,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 22,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BaseText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final bool isBold;

  BaseText({
    this.text = '',
    this.fontSize = 16,
    this.color = Colors.white,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        color: this.color,
        fontSize: this.fontSize,
        fontWeight: this.isBold ? FontWeight.bold : FontWeight.normal,
        fontFamily: 'TimesNewRoman',
      ),
    );
  }
}

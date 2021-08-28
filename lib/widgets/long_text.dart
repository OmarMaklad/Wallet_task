import 'package:flutter/material.dart';

class LongText extends StatelessWidget {
  final String text;
  final Color color;
  LongText({ this.text, this.color}) ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:0,vertical: 10),
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 14,
          fontFamily: "roboto medium",
          color: color,
        ),
      ),
    );
  }
}

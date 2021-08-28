import 'package:flutter/material.dart';
import '../constants.dart';
class DoNotHave extends StatelessWidget {
  final String text;
  final String have;
  final Function route;
   DoNotHave({ this.text, this.route, this.have});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal:30,vertical:10),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Text( have,
              style: TextStyle(
                fontSize: 14,
                fontFamily: "roboto bold",
                color: kGryColor,
              )
          ),
          GestureDetector(
            onTap:route,
            child: Text(text,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "roboto bold",
                  color:Colors.black,
                )
            ),
          ),
        ],
      ),
    );
  }
}

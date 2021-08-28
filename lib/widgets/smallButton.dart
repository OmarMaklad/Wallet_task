import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import '../constants.dart';

class SmallButton extends StatelessWidget {
  final Function onPressed;
  final String title;
  final Color color;
  final double font;
  SmallButton({@required this.onPressed,@required this.title, this.color, this.font});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(vertical:5,horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal:30,vertical:5),
        decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(8),
        ),
        child:  Center(
          child: Padding(
                padding:  EdgeInsets.only(bottom:6),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontFamily: "dinnextl medium",
                  color:color!=kBlackColor?kBlackColor:Colors.white,
                  fontSize:font??14,),),
              ),
        ),
      ),
    );
  }
}

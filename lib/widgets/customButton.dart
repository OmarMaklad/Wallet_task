import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String title;
  final Color color;
  final String icon;
  final double width;
  final double height;
  final double hor;
  CustomButton({@required this.onPressed,@required this.title, this.color, this.width, this.icon, this.hor, this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.symmetric(vertical:10,horizontal: hor??20),
      padding: EdgeInsets.symmetric(vertical: 5),
      height:height==null?null: MediaQuery.of(context).size.height /height,
       width:width==null?null: MediaQuery.of(context).size.width / width,
      decoration: BoxDecoration(
          color: color,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Padding(
            padding:  EdgeInsets.only(bottom: 5),
            child: Text(title,style: TextStyle(
              color:Colors.white,
              fontFamily: "dinnextl bold",
              fontSize:18,),),
          ),
          icon!=null?SizedBox(width:5,):SizedBox(),
          icon!=null?Icon(Icons.check,color: Colors.white,):SizedBox(),

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../constants.dart';

// ignore: non_constant_identifier_names
Widget CustomAppBar({String title}){
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading:  GestureDetector(
        onTap: (){
          // MagicRouter.pop();
        },
        child: Icon(Icons.arrow_back,color: Colors.black,)),
    title: Text(title,style: TextStyle(fontSize: 18,fontFamily: "dinnextl medium",color: Colors.black),),
    actions: [
      Icon(Icons.search,color: kBColor,size:30,),
      GestureDetector(
        onTap: (){
          // MagicRouter.navigateTo(CartView());
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
              height: 30,
              width:30,
              child: Image.asset(getAsset("cart"),color: kBColor,)),
        ),
      ),
    ],

  );
}

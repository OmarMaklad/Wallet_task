import 'package:flutter/material.dart';
import 'package:walet_task/constants.dart';
import 'package:walet_task/tabsScreen/cubit.dart';

class ServiceContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        ContactUsCubit.get(context).screens();
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.symmetric(horizontal:25,vertical: 10),
          decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
                width: 30,
                child: Image.asset(getAsset("apple"),color: Colors.white,)),
            SizedBox(height:5,),
            Text("Payment",style: TextStyle(fontSize: 14,fontFamily: "dinnextl bold",color: Colors.white),),
          ],
        ),
      ),
    );
  }
}

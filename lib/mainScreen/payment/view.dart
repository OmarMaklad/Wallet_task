import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walet_task/mainScreen/payment/units/new_credit.dart';
import 'package:walet_task/mainScreen/payment/units/package_container.dart';
import 'package:walet_task/mainScreen/payment/units/pay_details.dart';
import 'package:walet_task/mainScreen/payment/units/pay_submit.dart';
import 'package:walet_task/mainScreen/payment/units/payment_type.dart';

class Payments extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          children: [
           PackageContainer(),
           NewCredit(),
           PaymentType(),
           Padding(
              padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 10  ),
              child: Divider(height: 3,color: Colors.grey.withOpacity(.4),),
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Expanded(
                   child: TextField(
                     decoration: InputDecoration(
                       contentPadding: EdgeInsets.symmetric(vertical: 5),
                       fillColor: Color(0xFFF5F5F5),
                       filled: true,
                       hintText: "أدخل كود الخصم",
                       hintStyle: TextStyle(fontSize: 12,color: Color(0xFFA8A8A8),),
                       prefixIcon: Icon(Icons.edit_outlined,color: Color(0xFFA8A8A8),),
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(color:Color(0xFFF5F5F5),width: 1),
                         borderRadius: BorderRadius.circular(5),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Color(0xFFF5F5F5),width:1),
                         borderRadius: BorderRadius.circular(5),
                       ),
                     ),
                   )
               ),
               SizedBox(width: 10,),
               Container(
                 padding: EdgeInsets.symmetric(horizontal:25,vertical: 11),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8),
                   color: Color(0xFF2E3192)
                 ),
                 child: Text("تطبيق",style:TextStyle(fontSize: 15,color: Colors.white),),
               ),

             ],
           ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 10  ),
              child: Divider(height: 3,color: Colors.grey.withOpacity(.4),),
            ),
           PayDetails(),
          ],
        ),
        bottomNavigationBar: PayConfirm() ,
      ),
    );
  }
}

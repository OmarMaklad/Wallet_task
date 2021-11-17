import 'package:flutter/material.dart';

class PayDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("تفاصيل الدفع",style: TextStyle(fontSize: 16,),),
        Text("تفاصيل دفع اشتراك الباقة",style: TextStyle(fontSize: 12,color: Color(0xFFA8A8A8)),),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("اشتراك الباقة",style: TextStyle(fontSize: 16,color: Color(0xFFA8A8A8)),),
            Text("‏250 ر.س",style: TextStyle(fontSize: 16,),),
          ],
        ),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("الخصم",style: TextStyle(fontSize: 16,color: Color(0xFFA8A8A8)),),
              Text("‏250 ر.س",style: TextStyle(fontSize: 16,),),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("إجمالي الإشتراك",style: TextStyle(fontSize: 16,color: Color(0xFFA8A8A8)),),
            Text("‏250 ر.س",style: TextStyle(fontSize: 16,),),
          ],
        ),


      ],
    );
  }
}

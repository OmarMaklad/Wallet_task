import 'package:flutter/material.dart';

class NewCredit extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("دفع الإشتراك",style: TextStyle(fontSize: 16,),),
            Text("قم بإختيار طريقة الدفع المناسبة",style: TextStyle(fontSize: 12,color: Color(0xFFA8A8A8)),),

          ],
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal:10 ,vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Color(0xFF2E3192),width: 1),
            ),
            child: Text("بطاقة دفع جديدة",style: TextStyle(fontSize: 14,color: Color(0xFF2E3192)),)),
      ],
    );
  }
}

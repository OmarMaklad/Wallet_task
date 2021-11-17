import 'package:flutter/material.dart';

class NoCredit extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("images/apple.png"),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 10),
          child: Text("لا توجد بطاقات دفع",style: TextStyle(fontSize: 18),),
        ),
        Text("يرجى إضافة بطاقة دفع لإكمال دفع الطلب",style: TextStyle(fontSize: 15,color: Color(0xFF888888))),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
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

import 'package:flutter/material.dart';

class BankTransfer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;

    return Column(
      children: [
        _fieldItem("إسم صاحب الحساب"),
        _fieldItem("رقم الحساب"),
        _fieldItem("رقم الحساب"),
        Container(
          height: height*.16,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(0xFFF5F5F5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/cart.png"),
              SizedBox(height: 5,),
              Text("ارفاق صورة الحوالة",style: TextStyle(fontSize: 15,color: Color(0xFFA8A8A8)),)
            ],
          ),
        )

      ],
    );
  }
  Widget _fieldItem(String hint){
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
          fillColor: Color(0xFFF5F5F5),
          filled: true,
          hintText: hint,
          hintStyle: TextStyle(fontSize: 12,color: Color(0xFFA8A8A8),),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Color(0xFFF5F5F5),width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFF5F5F5),width:1),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}

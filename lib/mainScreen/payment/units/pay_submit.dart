import 'package:flutter/material.dart';

class PayConfirm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        height: height*.09,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color:Colors.grey.withOpacity(.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xFFA8A8A8)
          ),
          child: Center(child: Text("تأكيد الدفع",style: TextStyle(fontSize: 16,color: Colors.white),)),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'bank_transfer.dart';
import 'list_of_credit.dart';
import 'no_credit.dart';

class PaymentType extends StatefulWidget {

  @override
  _PaymentTypeState createState() => _PaymentTypeState();
}

class _PaymentTypeState extends State<PaymentType> {
  bool _check =false;
  bool _check1 =false;

  ScrollController _controller = ScrollController( );
  _scrollToBottom() {
    _controller.jumpTo(_controller.position.extentAfter);
  }
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          height: 40,
          child: ListView(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  Checkbox(
                    value:_check,
                    checkColor: Colors.white,
                    splashRadius: 5,
                    side: BorderSide(color: Color(0xFFCBCBCB),width: 1),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    onChanged: (val){
                   setState(() {
                     _check=!_check;
                     _check1=false;
                   });
                    },
                    activeColor: Color(0xFFFEA900),),
                  Text("البطاقات البنكية",style: TextStyle(fontSize: 16,),)
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value:_check1,
                    checkColor: Colors.white,
                    splashRadius: 5,
                    side: BorderSide(color: Color(0xFFCBCBCB),width: 1),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    onChanged: (val){
                      setState(() {
                        _check1=!_check1;
                        _check=false;
                      });
                    },
                    activeColor: Color(0xFFFEA900),),
                  Text("الحوالة البنكية",style: TextStyle(fontSize: 16,),)
                ],
              ),
            ],
          ),
        ),
        _check1==false?ListOfCredit():
        BankTransfer(),
      ],
    );
  }

}

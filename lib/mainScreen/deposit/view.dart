import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walet_task/constants.dart';
import 'package:walet_task/widgets/customButton.dart';
import 'package:walet_task/widgets/customTextFeild.dart';


class Deposit extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.54,
      margin: EdgeInsets.symmetric(horizontal:25,vertical:70),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
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
      child: ListView(
        children: [
           Row(
             children: [
               Container(
                 decoration: BoxDecoration(
                   color: Colors.indigo,
                   borderRadius: BorderRadius.circular(150),
                 ),
                 height:65,
                 width: 65,
                 child: Icon(Icons.account_balance_wallet_outlined,size:35,color: Colors.white,),

               ),
               Expanded(
                 child: ListTile(
                   title: Text("Omar Maklad",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 18),),
                   subtitle: Text("omarmaklad6@gmail.com",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                 ),
               ),
             ],
           ),

          ListTile(
            title: Text("Amount",
              style: TextStyle(fontSize: 14,fontFamily: "dinnextl bold",color: Colors.black),),
            minLeadingWidth: 0,
            horizontalTitleGap: 5,
            leading: Icon(Icons.account_balance_wallet_outlined,size:30,color: Colors.orange,),
          ),
          CustomTextField(
            hint:"0.0",
          ),

          ListTile(
            title: Text("walletPocket",
              style: TextStyle(fontSize: 14,fontFamily: "dinnextl bold",color: Colors.black),),
            minLeadingWidth: 0,
            horizontalTitleGap: 5,
            leading: Icon(Icons.monetization_on,size:30,color: Colors.orange,),
          ),
          Container(
            height: MediaQuery.of(context).size.height*.06,
            margin: EdgeInsets.symmetric(vertical:0,horizontal:20),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border:Border.all(color: kGryColor,width:1) ,
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("select Pocket",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: kGryColor),),
                Expanded(
                  child: DropdownButton(
                      dropdownColor: Colors.white,
                      iconEnabledColor: Colors.deepPurpleAccent,
                      iconDisabledColor: Colors.indigo,
                      value: 0,
                      underline: Container(),
                      items: [
                        DropdownMenuItem(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50),
                            child: Text("wallet",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: kPrimaryColor),),
                          ),
                          value:0,
                          onTap: (){},
                        ),
                        DropdownMenuItem(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50),
                            child: Text("Wallet2",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: kPrimaryColor),),
                          ),
                          value: 1,
                        ),
                      ],
                     ),
                ),
              ],
            ),
          ),
           SizedBox(height: 25,),
          CustomButton(onPressed: (){}, title: "Submit",height: 16,color: Colors.indigo,width: 2,icon: "ll"),
        ],
      ),
    );
  }
}

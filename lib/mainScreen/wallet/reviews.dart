import 'package:flutter/material.dart';
import 'package:walet_task/widgets/AnimatedWidgets.dart';
import 'package:walet_task/widgets/customButton.dart';
import '../../../constants.dart';

class ReviewsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SliverGrid(
        delegate:SliverChildBuilderDelegate(
              (_,ind)=>  AnimatedWidgets(
                horizontalOffset: 50,
                virticaloffset: -20,
                duration: 1,
                child: Container(
                    width: height * .28,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Mar 24",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "dinnextl bold",
                                    color: kTextColor,
                                  ),
                                ),
                                SizedBox(height:5,),
                                Text("7:3 pm",
                                  style: TextStyle(fontSize: 14,color: Colors.deepOrangeAccent,fontFamily: "dinnextl medium"),),
                              ],
                            ),
                           Spacer(),
                            RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
                              disabledColor: Colors.blue,
                              child: Text("بطاقة المنح الجامعية",
                                  style: TextStyle(fontSize: 14,color: Colors.white,fontFamily: "dinnextl medium")),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
                              disabledColor: Colors.amberAccent,
                              child: Text("Debit",
                                  style: TextStyle(fontSize: 14,color: Colors.white,fontFamily: "dinnextl medium")),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Account Actions",
                              style: TextStyle(
                                  color: kTextColor, fontFamily: "dinnextl medium", fontSize: 14),
                            ),
                            Spacer(),
                            Icon(Icons.account_balance_wallet_outlined,size: 15,color: Colors.deepPurpleAccent,),
                            SizedBox(width: 5,),
                            Text("100",
                              style: TextStyle(
                                  color: Colors.deepOrangeAccent, fontFamily: "dinnextl medium", fontSize: 14),)


                          ],
                        ),
                      ],
                    )),
              ),
          childCount: 20,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 5,
            childAspectRatio: 2/.7
        ));

  }
}

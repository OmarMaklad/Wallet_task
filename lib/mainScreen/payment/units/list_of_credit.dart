import 'package:flutter/material.dart';

class ListOfCredit extends StatefulWidget {

  @override
  _ListOfCreditState createState() => _ListOfCreditState();
}

class _ListOfCreditState extends State<ListOfCredit> {
  bool _select =false;
  ScrollController _controller = ScrollController();
  int id;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    return Container(
      height: height*.18,
      child: ListView.builder(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) =>Stack(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  id=index;
                  _select = !_select;
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: height*.2,
                width:height*.35,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  image: DecorationImage(
                    ///TODO change Image
                      image: AssetImage("images/banner.png"),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ) ,
            if (_select==true&&id==index) GestureDetector(
              onTap: (){
                setState(() {
                  _select = !_select;
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: height*.2,
                width:height*.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black38,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                      height: 22,
                      width: 22,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFFEA900),
                      ) ,
                      child: Center(child: Icon(Icons.check,color: Colors.white,size: 18,)),
                    ),
                  ],
                ),
              ),
            ) else SizedBox(),
          ],
        ),

      ),
    );
  }
}

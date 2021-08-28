import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';


class OfferSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();
    final height = MediaQuery.of(context).size.height;
    return  Column(
      children: [
        CarouselSlider.builder(
          itemCount:5,
          carouselController: _controller,
          options: CarouselOptions(
            height: height*.2,
            autoPlay: true,
            autoPlayInterval: Duration(seconds:5),
            autoPlayAnimationDuration: Duration(milliseconds: 600),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
          ),
          itemBuilder: (context,_,index){
            return Container(
              width: height*.54,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              margin: EdgeInsets.symmetric(
                  horizontal: 5, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                  image:DecorationImage(
                    fit: BoxFit.cover,
                    image:AssetImage(getAsset("how")),
                  ) ,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                  borderRadius: BorderRadius.circular(15),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Cash",style: TextStyle(color: Colors.white,fontFamily: "dinnextl medium"),)),
              ),
            );
          },
        ),

      ],
    );
  }
}

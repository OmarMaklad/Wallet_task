import 'package:flutter/material.dart';


class BottomSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SliverGrid(
        delegate:SliverChildBuilderDelegate(
              (_,ind)=>  SizedBox(height: 20,),
          childCount: 1,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 5,
            childAspectRatio: 2/.7
        ));

  }
}

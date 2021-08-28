import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walet_task/mainScreen/deposit/view.dart';
import 'package:walet_task/mainScreen/wallet/bottomSize.dart';
import 'package:walet_task/mainScreen/wallet/reviews.dart';
import 'package:walet_task/mainScreen/wallet/serviceContainer.dart';
import 'package:walet_task/mainScreen/wallet/slider.dart';
import 'package:walet_task/tabsScreen/cubit.dart';
import 'package:walet_task/tabsScreen/state.dart';

class WalletView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContactUsCubit,ConUsState>(
      listener: (_,state){},
      builder: (_,state)=> state is ConUsErrorState?Deposit():CustomScrollView(
        slivers: [
          SliverList(
            delegate:SliverChildListDelegate([
              OfferSlider(),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ServiceContainer(),
                  ServiceContainer(),
                  ServiceContainer(),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Recent Transaction",
                  style: TextStyle(
                      fontFamily: "dinnextl bold", fontSize: 18),
                ),
              ),
            ]
            ),
          ),
          ReviewsSection(),
          BottomSize(),
        ],
      ),
    );
  }
}

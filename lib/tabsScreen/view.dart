import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walet_task/mainScreen/deposit/view.dart';
import 'package:walet_task/mainScreen/wallet/view.dart';
import 'package:walet_task/tabsScreen/cubit.dart';
import 'package:walet_task/tabsScreen/state.dart';
import '../../constants.dart';
import 'iconModel.dart';


class TabsScreen extends StatefulWidget {
   final int screenIndex;

   TabsScreen({this.screenIndex});
  @override
  _TabsScreenState createState() => _TabsScreenState();
}
class _TabsScreenState extends State<TabsScreen> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  // int userScreenIndex=1 ;
  bool selected = false;
  List<Widget> userScreens= [
    WalletView(),
    WalletView(),
    WalletView(),
    WalletView(),
    WalletView(),
  ];

  List  title = [
    "Home",
    "Wallet",
    "Company",
    "Setting",
   "Profile",
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final cubit = ContactUsCubit.get(context);
    return  SafeArea(
      child:BlocConsumer<ContactUsCubit,ConUsState>(
        listener: (_,state){},
        builder:(_,state)=> Scaffold(
            backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.blue,
                toolbarHeight: height*.11,
               shape:RoundedRectangleBorder(borderRadius: BorderRadius.only(
                 bottomLeft: Radius.circular(20),
                 bottomRight: Radius.circular(20),
               ),),
                leading: Padding(
                  padding:  EdgeInsets.only(top: 25),
                  child: Image.asset(getAsset("logo"),color: Colors.white,),
                ),
                title: Padding(
                  padding:  EdgeInsets.only(top: 25),
                  child: Text(state is ConUsErrorState?"Deposit":"Wallet",style: TextStyle(fontSize: 24,fontFamily: "dinnextl bold"),),
                ),
                centerTitle: true,
                actions: [
                  Padding(
                    padding:  EdgeInsets.only(top: 25),
                    child: Icon(Icons.notifications,size: 30,color: Colors.white,),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 25,right: 10,left: 10),
                    child: Icon(Icons.menu,size: 30,color: Colors.white,),
                  ),
                ],
              ),
               body:
               Stack(
                 children: [

               userScreens[cubit.userScreenIndex],
                   Column(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Stack(
                         children: [
                           Container(
                             margin: EdgeInsets.only(top: 40),
                             padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                              height: height*.08,
                             color: kBackgroundColor,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               for(int i=0; i < iconModel.length;i++)
                                 Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     GestureDetector(
                                       onTap: (){
                                         cubit.userScreenIndex = iconModel[i].id;
                                         cubit.emit(ConUsInitState());
                                         setState(() {
                                           selected = !selected;
                                           cubit.userScreenIndex = iconModel[i].id;
                                         });
                                       },
                                       child: AnimatedContainer(
                                         margin: EdgeInsets.only(top:
                                         cubit.userScreenIndex!=iconModel[i].id?40:state is ConUsErrorState?40:0),
                                         padding: EdgeInsets.all(2),
                                         width: cubit.userScreenIndex!=iconModel[i].id ? 40 : state is ConUsErrorState?40:50.0,
                                         height: cubit.userScreenIndex!=iconModel[i].id ? 40 :state is ConUsErrorState?40: 50.0,
                                         decoration: BoxDecoration(
                                           color: cubit.userScreenIndex==iconModel[i].id ?
                                           state is ConUsErrorState?kBackgroundColor:Colors.blue:kBackgroundColor,
                                           borderRadius: BorderRadius.circular(10),
                                         ),
                                         duration: const Duration(seconds: 2),
                                         curve: Curves.fastLinearToSlowEaseIn,
                                         child: Icon(iconModel[i].icon,size:25,
                                           color:cubit.userScreenIndex!=iconModel[i].id?
                                           Colors.blueAccent:state is ConUsErrorState?Colors.blueAccent:Colors.white,),
                                       ),
                                     ),

                                     Text(title[i],style: TextStyle(fontSize: 12,fontFamily: "dinnextl bold",
                                         color: iconModel[i].id!=cubit.userScreenIndex?Colors.blue:
                                         state is ConUsErrorState?Colors.blue:Colors.blueAccent),),
                                   ],
                                 ),
                             ],
                           ),
                         ],
                       ),

                     ],
                   ),

                 ],
               ),

              // bottomNavigationBar: ,
        ),
      ),
    );
  }
}

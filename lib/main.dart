import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walet_task/tabsScreen/cubit.dart';
import 'package:walet_task/tabsScreen/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=>ContactUsCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TabsScreen(),
      ),
    );
  }
}

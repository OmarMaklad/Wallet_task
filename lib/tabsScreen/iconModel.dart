import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconModel{
 final int id;
  final IconData icon;


  IconModel(this.id, this.icon);
}
List<IconModel> iconModel=[
  IconModel(0,Icons.home_outlined),
  IconModel(1,Icons.account_balance_wallet_outlined),
  IconModel(2,Icons.location_city_outlined),
  IconModel(3,Icons.settings_outlined),
  IconModel(4,Icons.person_outline),

];
import 'package:flutter/material.dart';
import 'line_chart_page.dart';

class HomePageChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(title: Text("chart"), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            height: 350,
            child: LineChartPage(),
          ),
        ),
      );
}

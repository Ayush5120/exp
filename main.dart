import 'package:flutter/material.dart';
import 'package:scientific_calculator/second.dart';
import 'package:scientific_calculator/third.dart';
import 'scientificCalculator.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(kaalu());
}

class kaalu extends StatefulWidget {
  @override
  _kaaluState createState() => _kaaluState();
}

// ignore: camel_case_types
class _kaaluState extends State<kaalu> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(
      length: 3,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFF283637),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70), // here the desired height
            child: AppBar(
              backgroundColor: Color(0xFF283637),
              bottom: new TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                    color: Color(0xFF283637), borderRadius: BorderRadius.circular(20)
                ),

                tabs: <Widget>[
                  new Tab(
                    icon: Icon(MdiIcons.calculatorVariant),
                  ),
                  new Tab(
                      icon: Icon(MdiIcons.hammerScrewdriver)
                  ),
                  new Tab(
                      icon: Icon(MdiIcons.mathCompass)
                  )

                ],
              ),
            ),
          ),

          body: new TabBarView(
            controller: _tabController,
            children: <Widget>[
              new ScientificCalculator(),
              new SecondPage(),
              new ThirdPage(),
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: Text('_hist'),
            ),
            Container(
              child: Text('_exp'),
            ),
          ],
        ),
      ),
    );
  }
}

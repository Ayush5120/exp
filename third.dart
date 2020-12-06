import 'package:flutter/material.dart';

// ignore: camel_case_types
class ThirdPage extends StatelessWidget {
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

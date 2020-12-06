import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  CategoryBox(
      {@required this.pic,
      @required this.text,
      @required this.rang,
      this.action});

  final IconData pic;
  final String text;
  final Color rang;
  final Function action;

  //Color(0x2266c194)
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Color(0xFF283637),
        child: InkWell(
          splashColor: rang,
          borderRadius: BorderRadius.circular(50.0),
          onTap: () {
            action();
          },
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(50.0),
                color: Color(0x3366c194),
              ),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    pic,
                    size: 40.0,
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text(
                    text,
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  )
                ],
              )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DetailActionButtons extends StatelessWidget {
  final int num;
  final String text;
  final Color color;

  const DetailActionButtons({Key key, this.num, this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 90,
      child: FloatingActionButton(
        heroTag: text,
        onPressed: null,
        backgroundColor: color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "$num",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

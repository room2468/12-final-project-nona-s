import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required this.result,
  }) : super(key: key);

  final double result;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Total Kembalian",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            result.toStringAsFixed(1),
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
    // );
  }
}

import 'package:flutter/material.dart';

class Total extends StatelessWidget {
  const Total({
    Key key,
    @required this.total,
  }) : super(key: key);

  final double total;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Total Harga",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            total.toStringAsFixed(1),
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

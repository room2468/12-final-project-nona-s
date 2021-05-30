import 'data.dart';
import 'rating_bar.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Fashion fashion;

  Detail(this.fashion);

  @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      backgroundColor: Colors.white,
      elevation: .5,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.brown),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(
        '     NONAS FASHION',
        style: TextStyle(
            color: Colors.brown, fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search, color: Colors.brown),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart, color: Colors.brown),
          onPressed: () {},
        ),
      ],
    );
    final topLeft = Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Hero(
            tag: fashion.title,
            child: Material(
              elevation: 15.0,
              shadowColor: Colors.purple.shade900,
              child: Image(
                image: AssetImage(fashion.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        text('${fashion.pages} halaman', color: Colors.white30, size: 12)
      ],
    );

    ///detail top right
    final topRight = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text(fashion.title,
            size: 16,
            isBold: true,
            color: Colors.white70,
            padding: EdgeInsets.only(top: 16.0)),
        text(
          ' ${fashion.size}',
          color: Colors.white30,
          size: 12,
          padding: EdgeInsets.only(top: 8.0, bottom: 16.0),
        ),
        Row(
          children: <Widget>[
            text(
              fashion.price,
              isBold: true,
              color: Colors.white70,
              padding: EdgeInsets.only(right: 8.0),
            ),
            RatingBar(rating: fashion.rating, color: Colors.white70)
          ],
        ),
        SizedBox(height: 32.0),
        Material(
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.blue.shade200,
          elevation: 5.0,
          child: MaterialButton(
            onPressed: () {},
            minWidth: 160.0,
            color: Colors.blue,
            child: text('BELI', color: Colors.white, size: 13),
          ),
        )
      ],
    );

    final topContent = Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 2, child: topLeft),
          Flexible(flex: 3, child: topRight),
        ],
      ),
    );

    ///scrolling text description
    final bottomContent = Container(
      height: 220.0,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          fashion.description,
          style: TextStyle(fontSize: 13.0, height: 1.5),
        ),
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }

  ///create text widget
  text(String data,
          {Color color = Colors.black87,
          num size = 14,
          EdgeInsetsGeometry padding = EdgeInsets.zero,
          bool isBold = false}) =>
      Padding(
        padding: padding,
        child: Text(
          data,
          style: TextStyle(
              color: color,
              fontSize: size.toDouble(),
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );
}

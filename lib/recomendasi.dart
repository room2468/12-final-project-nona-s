import 'package:flutter/material.dart';
//import 'package:nonas/data.dart';
import 'package:nonas/page_satu.dart' as tabpagesatu;
import 'package:nonas/page_dua.dart' as tabpagedua;
import 'package:nonas/page_tiga.dart' as tabpagetiga;

class Recommendasi extends StatefulWidget {
  static String tag = 'recommendasi-page';

  @override
  _RecommendasiState createState() => _RecommendasiState();
}

class _RecommendasiState extends State<Recommendasi>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.white,
      elevation: .5,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.brown),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(
        '    NONAS FASHION',
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

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar,
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          tabs: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Tab(
                icon: Icon(Icons.home, color: Colors.brown),
              ),
            ),
            Tab(
              child: Icon(
                Icons.favorite,
                color: Colors.brown,
              ),
            ),
            Tab(
              child: Icon(
                Icons.person,
                color: Colors.brown,
              ),
            ),
          ],
        ),
      ),
      //body
    );
  }
}

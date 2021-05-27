import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
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
    return new Scaffold(
      //create appBar
      appBar: new AppBar(
        //warna background
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          ),
        ],
        title: Text("NONA'S"),
        centerTitle: true,
      ),

      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          tabs: <Widget>[
            GestureDetector(
                onTap: () {},
                child: Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.brown,
                  ),
                )),
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
    );
  }
}

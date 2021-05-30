import 'package:flutter/material.dart';

import 'package:nonas/data.dart';

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //create fashion tile hero
    createTile(Fashion fashion) => Hero(
          tag: fashion.title,
          child: Material(
            elevation: 15.0,
            shadowColor: Colors.brown,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'detail/${fashion.title}');
              },
              child: Image(
                image: AssetImage(fashion.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );

    ///create fashion grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 3,
            crossAxisCount: 3,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: fashions.map((fashion) => createTile(fashion)).toList(),
          ),
        )
      ],
    );
    return Scaffold(
      body: grid,
      backgroundColor: Colors.brown[400],
    );
  }
}


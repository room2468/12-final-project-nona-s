import 'package:flutter/material.dart';

class AtasanPriaPage extends StatefulWidget {
  static String tag = 'AtasanPria-page';
  @override
  _AtasanPriaPageState createState() => new _AtasanPriaPageState();
}

class _AtasanPriaPageState extends State<AtasanPriaPage> {
  @override
  Widget build(BuildContext context) {
    final bar = AppBar(
      elevation: .5,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text("FIND HERE"),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            }),
        IconButton(
          icon: Icon(Icons.shopping_cart, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );

    final search = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: CircleAvatar(
          radius: 70.0,
          backgroundImage: AssetImage('assets/tartan.jpeg'),
        ),
      ),
    );

    final paragraf1 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Temukan kode produk atasan pria yang akan dibeli',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.brown,
          Colors.brown,
        ]),
      ),
      child: Column(
        children: <Widget>[bar, search, paragraf1],
      ),
    );

    return Scaffold(
      body: body,
    );
    //drawer: Drawer(),
  }
}

class DataSearch extends SearchDelegate<String> {
  final atasanPria = ["AP1", "AP2", "AP3", "AP4", "AP5", "AP6"];

  final recentAtasanPria = ["AP1", "AP2", "AP3", "AP4", "AP5", "AP6"];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Detail pencarian',
      home: Scaffold(
          body: Column(children: <Widget>[
        Image(
          image: AssetImage('assets/tartan7.jpeg'),
        ),
        Text(
          'Detail Produk Atasan Pria',
          style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
        ),
        Text('By NONAS'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '\t\t\t\t\tDetail Produk\t\t\t\t\t: Atasan Pria\n\t\t\t\t\tDetail Produk\t\t\t\t\t: Atasan Pria\n\t\t\t\t\tDetail Produk\t\t\t\t\t: Atasan Pria\n\t\t\t\t\tDetail Produk\t\t\t\t\t: Atasan Pria\n\t\t\t\t\tDetail Produk\t\t\t\t\t: Atasan Pria',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontFamily: "Serif", height: 2.0),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          height: 50,
          // ignore: deprecated_member_use
          child: RaisedButton(
            color: Colors.brown,
            child: Text(
              "BELI SEKARANG",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(AtasanPriaPage.tag);
            },
          ),
        ),
      ])),
    );
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentAtasanPria
        : atasanPria.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.location_city),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(color: Colors.grey))
              ]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}

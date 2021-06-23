import 'package:flutter/material.dart';
import 'package:nonas/Pembayaran.dart';

class BawahanPriaPage extends StatefulWidget {
  static String tag = 'BawahanPria-page';
  @override
  _BawahanPriaPageState createState() => new _BawahanPriaPageState();
}

class _BawahanPriaPageState extends State<BawahanPriaPage> {
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
        'Temukan kode produk bawahan pria yang akan dibeli',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20.0, color: Colors.white),
      ),
    );

    final paragraf2 = Padding(
        padding: EdgeInsets.all(8.0),
        child: new Image.asset('assets/celanalaki.jpeg'));

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
        children: <Widget>[bar, search, paragraf1, paragraf2],
      ),
    );

    return Scaffold(
      body: body,
    );
    //drawer: Drawer(),
  }
}

class DataSearch extends SearchDelegate<String> {
  final bawahanPria = ["BP1", "BP2", "BP3", "BP4"];

  final recentBawahanPria = ["BP1", "BP2", "BP3", "BP4"];
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
          image: AssetImage('assets/celana4.jpg'),
          height: 300,
        ),
        Text(
          'Detail Produk',
          style:
              TextStyle(fontSize: 24, fontWeight: FontWeight.bold, height: 2.0),
        ),
        Text('By NONAS'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tKategori\t: Celana Pria\n\t\t\t\t\t\t\t\t\t\t\tMerk\t\t: Zara\n\t\t\t\t\t\t\t\t\tBahan\t\t\t\t: Katun\n\t\t\tStock\t\t\t\t\t: 10\n\tDikirim Dari\t\t\t\t\t: Malang',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, height: 2.0),
            ),
          ],
        ),
        Divider(),
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
              Navigator.of(context).pushNamed(Pembayaran.tag);
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
        ? recentBawahanPria
        : bawahanPria.where((p) => p.startsWith(query)).toList();

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

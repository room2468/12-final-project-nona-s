import 'package:flutter/material.dart';
import 'package:nonas/AtasanPria.dart';
import 'package:nonas/AtasanWanita.dart';
import 'package:nonas/CelanaPria.dart';
import 'package:nonas/RokWanita.dart';

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            backgroundColor: Colors.brown[300],
            appBar: AppBar(
              //background color keseluruhan
              backgroundColor: Colors.brown[500],
              title: Text(
                "Kategori Produk",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              centerTitle: true,
            ),
            body: new Stack(children: <Widget>[
              new Container(
                margin: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Divider(),
                    Container(
                      width: double.infinity,
                      height: 50,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        color: Colors.white,
                        child: Text(
                          "Atasan Wanita",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          //Navigator.of(context).pushNamed(AtasanWanitaPage.tag);
                        },
                      ),
                    ),
                    Divider(),
                    Divider(),
                    Container(
                      width: double.infinity,
                      height: 50,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        color: Colors.redAccent,
                        child: Text(
                          "Rok Wanita",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          //Navigator.of(context).pushNamed(RokWanitaPage.tag);
                        },
                      ),
                    ),
                    Divider(),
                    Divider(),
                    Container(
                      width: double.infinity,
                      height: 50,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        color: Colors.white,
                        child: Text(
                          "Atasan Pria",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          //Navigator.of(context).pushNamed(AtasanPriaPage.tag);
                        },
                      ),
                    ),
                    Divider(),
                    Divider(),
                    Container(
                      width: double.infinity,
                      height: 50,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        color: Colors.redAccent,
                        child: Text(
                          "Celana Pria",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          //Navigator.of(context).pushNamed(BawahanPriaPage.tag);
                        },
                      ),
                    ),
                    Divider(),
                    Divider(),
                    Container(
                      width: double.infinity,
                      height: 50,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        color: Colors.white,
                        textColor: Colors.white,
                        child: Text(
                          "Mukenah",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          // Navigator.of(context).pushNamed(Recommendasi.tag);
                        },
                      ),
                    ),
                    Divider(),
                    Divider(),
                    Container(
                      width: double.infinity,
                      height: 50,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        color: Colors.redAccent,
                        // textColor: Colors.white,
                        child: Text(
                          "Gift",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          // Navigator.of(context).pushNamed(Recommendasi.tag);
                        },
                      ),
                    ),
                    Divider(),
                    Divider(),
                  ],
                ),
              ),
            ])));
  }
}

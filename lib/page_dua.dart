import 'package:flutter/material.dart';
import 'package:nonas/recomendasi.dart';

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
                "Rekomendasi Pakaian",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              centerTitle: true,
            ),
            //backgroundColor: Colors.lightGreenAccent,
            body: new Stack(children: <Widget>[
              new Container(
                margin: EdgeInsets.all(8),
                child: Column(
                  children: [
                    // Container(
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(10),
                    //   ),
                    //   width: double.infinity,
                    //   height: 50,
                    //   // ignore: deprecated_member_use
                    //   child: RaisedButton(
                    //     color: Colors.brown,
                    //     child: Text(
                    //       "Rekomendasi Pakaian",
                    //       style: TextStyle(
                    //         color: Colors.black,
                    //         fontSize: 20.0,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //     ),
                    //     onPressed: () {
                    //       Navigator.of(context).pushNamed(Recommendasi.tag);
                    //     },
                    //   ),
                    // ),
                    Divider(),
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
                          Navigator.of(context).pushNamed(Recommendasi.tag);
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
                          "Bawahan Wanita",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(Recommendasi.tag);
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
                        //textColor: Colors.white,
                        child: Text(
                          "Atasan Pria",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(Recommendasi.tag);
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
                        //textColor: Colors.white,
                        child: Text(
                          "Bawahan Pria",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(Recommendasi.tag);
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
                          Navigator.of(context).pushNamed(Recommendasi.tag);
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
                          Navigator.of(context).pushNamed(Recommendasi.tag);
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

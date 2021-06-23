import 'package:flutter/material.dart';
import 'package:nonas/InstagramPage.dart';
import 'package:nonas/login_page.dart';

class PageTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final profil = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.brown,
          backgroundImage: AssetImage('assets/tartan.jpeg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'NONAS FASHION',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final paragraf1 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Selamat Datang di NonaS Fashion',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final paragraf2 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'NonaS Group adalah sebuah  e-commerce  yang didirikan oleh Novelya, Nafhida, dan Susanti pada tahun 2021, guna memenuhi nilai projek akhir pada  Mata Kuliah Pemrograman Mobile. NonaS Group menyediakan berbagai macam fashion kekinian.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final paragraf3 = Container(
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Colors.redAccent,
        child: Text(
          "Instagram NONAS",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(InstagramPage.tag);
        },
      ),
    );

    final paragraf4 = Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      height: 40,
      // ignore: deprecated_member_use
      child: MaterialButton(
        color: Colors.white,
        height: 40,
        child: Text(
          "Log Out",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
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
        children: <Widget>[
          profil,
          welcome,
          paragraf1,
          paragraf2,
          paragraf3,
          paragraf4
        ],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}

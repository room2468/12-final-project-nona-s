import 'package:flutter/material.dart';

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
        'NonaS Group adalah sebuah  e-commerce  yang didirikan oleh Novelya, Nafhida, dan Susanti pada 2020, guna memenuhi nilai projek akhir pada  Mata Kuliah Pemrograman Mobile',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final paragraf3 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'NonaS Group menyediakan berbagai macam product dengan bahan dasar kain Tartan yang unik dan indah, terbagi dalam berbagai kategori pria dan wanita',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
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
        children: <Widget>[profil, welcome, paragraf1, paragraf2, paragraf3],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}

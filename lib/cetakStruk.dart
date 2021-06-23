import 'package:flutter/material.dart';
import 'package:nonas/home_page.dart';
import 'package:nonas/login_page.dart';

class StrukPage extends StatefulWidget {
  static String tag = 'StrukPage-page';
  @override
  _StrukPageState createState() => new _StrukPageState();
}

class _StrukPageState extends State<StrukPage> {
  @override
  Widget build(BuildContext context) {
    final profil = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: CircleAvatar(
          radius: 60.0,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('assets/struk.jpeg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'TRANSAKSI BERHASIL',
        style: TextStyle(
            fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );

    final paragraf1 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Rincian Pembayaran : ',
        style: TextStyle(
            fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
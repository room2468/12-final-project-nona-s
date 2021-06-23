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
    
     final struk = Container(
        margin: EdgeInsets.all(5),
        height: 100,
        width: 270,
        alignment: Alignment.topLeft,
        color: Colors.amber[100],
        child: Text(
          '\n Kode Pembayaran:128755527281119\n\n Waktu Pemesanan:24-06-2019 08:30',
          style: TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
        ));

    final paragraf2 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Informasi Pesanan: ',
        style: TextStyle(
            fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );

    final struk1 = Container(
        margin: EdgeInsets.all(5),
        height: 60,
        width: 270,
        alignment: Alignment.topLeft,
        color: Colors.amber[100],
        child: Text(
          '\n 2 Baju Wanita\t\t\t\t\t\t    : Rp.50.000/pcs',
          style: TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
        ));

    final paragraf3 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'TOTAL PEMBAYARAN\n          Rp. 200.000 ',
        style: TextStyle(
            fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
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
          "Kembali Ke Beranda",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
      ),
    );

    final paragraf5 = Container(
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
          struk,
          paragraf2,
          struk1,
          paragraf3,
          paragraf4,
          paragraf5,
        ],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nonas/AtasanPria.dart';
import 'package:nonas/AtasanWanita.dart';
import 'package:nonas/CelanaPria.dart';
import 'package:nonas/InstagramPage.dart';
import 'package:nonas/RokWanita.dart';
import 'package:nonas/cetakStruk.dart';
import 'package:nonas/home_page.dart';
import 'package:nonas/login_page.dart';
import 'package:nonas/Pembayaran.dart';

import 'data.dart';
import 'detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    AtasanWanitaPage.tag: (context) => AtasanWanitaPage(),
    Pembayaran.tag: (context) => Pembayaran(),
    RokWanitaPage.tag: (context) => RokWanitaPage(),
    BawahanPriaPage.tag: (context) => BawahanPriaPage(),
    AtasanPriaPage.tag: (context) => AtasanPriaPage(),
    StrukPage.tag: (context) => StrukPage(),
    InstagramPage.tag: (context) => InstagramPage()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fashion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        platform: TargetPlatform.iOS,
      ),
      home: LoginPage(),
      routes: routes,
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }

  generateRoute(RouteSettings settings) {
    final path = settings.name.split('/');
    final title = path[1];

    Fashion fashion = fashions.firstWhere((it) => it.title == title);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Detail(fashion),
    );
  }
}

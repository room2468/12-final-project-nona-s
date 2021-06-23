import 'package:flutter/material.dart';
import 'package:nonas/Instagram.dart';

class InstagramPage extends StatefulWidget {
  static String tag = 'InstagramPage-page';
  @override
  _InstagramPageState createState() => new _InstagramPageState();
}

class _InstagramPageState extends State<InstagramPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Instagram(
      selectedUrl: "https://www.instagram.com/tartanonaa/",
    ));
  }
}

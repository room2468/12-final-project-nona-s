import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Instagram extends StatelessWidget {
  final String selectedUrl;
  final Completer _controller = Completer();

  Instagram({
    @required this.selectedUrl,
  });
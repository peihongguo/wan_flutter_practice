import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebviewPage extends StatefulWidget {
  const WebviewPage({super.key});

  @override
  _WebviewPageState createState() {
    return _WebviewPageState();
  }
}

class _WebviewPageState extends State<WebviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tonprofile/screens/HomePage.dart';
import 'package:tonprofile/screens/DrawerPage.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DrawerPage(),
          HomePage(),
        ],
      ),
    );
  }
}

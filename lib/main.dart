import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tonprofile/providers/TagChange.dart';
import 'package:tonprofile/screens/InitialPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ton's Flutter Portfolio",
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (BuildContext _) => TagChangeProvider(),
        child: InitialPage(),
      ),
    );
  }
}

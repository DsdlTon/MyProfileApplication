import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tonprofile/providers/TagChange.dart';
import 'package:tonprofile/screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider(
        create: (BuildContext _) => TagChangeProvider(),
        child: HomePage(),
      ),
    );
  }
}

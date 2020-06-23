import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tonprofile/components/Other.dart';
import 'package:tonprofile/providers/TagChange.dart';
import 'package:tonprofile/components/LoginUI.dart';
import 'package:tonprofile/components/ShopUI.dart';
import 'package:tonprofile/components/Travel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        brightness: Brightness.dark,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 4,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 80.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Supakrit Apinyanapong',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Mobile Developer',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -60),
              child: Container(
                padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
                width: double.infinity,
                // height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Portfolio',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 35.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          TagCard(title: 'Login UI'),
                          TagCard(title: 'Shop UI'),
                          TagCard(title: 'Travel'),
                          TagCard(title: 'Other'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      width: double.infinity,
                      child: Consumer<TagChangeProvider>(
                        builder: (context, value, _) {
                          Widget child;
                          if (value.tag == "Login UI") {
                            child = LoginUI();
                          } else if (value.tag == "Shop UI") {
                            child = ShopUI();
                          } else if (value.tag == "Travel") {
                            child = Travel();
                          } else if (value.tag == "Other") {
                            child = Other();
                          }
                          return child;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget TagCard({title}) {
  return Consumer<TagChangeProvider>(
    builder: (context, value, _) {
      return AspectRatio(
        aspectRatio: 5 / 1.8,
        child: InkWell(
          onTap: () {
            value.swapTag(title);
          },
          child: Container(
            margin: EdgeInsets.only(right: 8.0),
            decoration: BoxDecoration(
              color: value.tag == title ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Colors.grey[400]),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: value.tag == title ? Colors.white : Colors.grey[600],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}

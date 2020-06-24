import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:tonprofile/components/Other.dart';
import 'package:tonprofile/providers/TagChange.dart';
import 'package:tonprofile/components/LoginUI.dart';
import 'package:tonprofile/components/ShopUI.dart';
import 'package:tonprofile/components/Travel.dart';
import 'package:tonprofile/screens/ProfilePage.dart';
import 'package:tonprofile/animation/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      child: ClipRRect(
        borderRadius: isDrawerOpen
            ? BorderRadius.circular(20.0)
            : BorderRadius.circular(0.0),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 0,
            brightness: Brightness.dark,
            leading: isDrawerOpen
                ? IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      setState(() {
                        xOffset = 0;
                        yOffset = 0;
                        scaleFactor = 1;
                        isDrawerOpen = false;
                      });
                    })
                : IconButton(
                    icon: Icon(Icons.person),
                    onPressed: () {
                      setState(() {
                        xOffset = 230;
                        yOffset = 150;
                        scaleFactor = 0.6;
                        isDrawerOpen = true;
                      });
                    },
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: ProfilePage(),
                            duration: Duration(milliseconds: 800),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Hero(
                            tag: 'nameTag',
                            child: Material(
                              color: Colors.transparent,
                              child: Text(
                                'Supakrit Apinyanapong',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Mobile Developer Intern",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
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
                        FadeAnimation(
                          1.0,
                          Text(
                            'Portfolio',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        FadeAnimation(
                          1.3,
                          Container(
                            height: 35.0,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                TagCard(title: 'Login UI'),
                                TagCard(title: 'Shop UI'),
                                TagCard(title: 'Travel UI'),
                                TagCard(title: 'Other UI'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        FadeAnimation(
                          1.6,
                          Container(
                            width: double.infinity,
                            child: Consumer<TagChangeProvider>(
                              builder: (context, value, _) {
                                Widget child;
                                if (value.tag == "Login UI") {
                                  child = LoginUI();
                                } else if (value.tag == "Shop UI") {
                                  child = ShopUI();
                                } else if (value.tag == "Travel UI") {
                                  child = Travel();
                                } else if (value.tag == "Other UI") {
                                  child = Other();
                                }
                                return child;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
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

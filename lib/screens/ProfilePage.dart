import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:tonprofile/animation/FadeAnimation.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.dark,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              // color: Colors.lightBlue,
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 47.0,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 45.0,
                            backgroundImage: AssetImage('assets/me.jpg'),
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          height: 50.0,
                          // color: Colors.green,
                          child: Column(
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
                              SizedBox(height: 10.0),
                              Text(
                                'BKK, Thailand',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FadeAnimation(
                          1.0,
                          SocialMedia(FontAwesomeIcons.facebook, 'Facebook',
                              'https://www.facebook.com/supakrit.ton'),
                        ),
                        FadeAnimation(
                          1.2,
                          SideBorder(),
                        ),
                        FadeAnimation(
                          1.4,
                          SocialMedia(FontAwesomeIcons.instagram, 'Instagram',
                              'https://www.instagram.com/dsdlton/'),
                        ),
                        FadeAnimation(
                          1.6,
                          SideBorder(),
                        ),
                        FadeAnimation(
                          1.8,
                          SocialMedia(FontAwesomeIcons.github, 'Github',
                              'https://github.com/DsdlTon'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            FadeAnimation(
              2,
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeAnimation(
                            2.3,
                            Text(
                              'Education',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          FadeAnimation(
                            2.5,
                            InfoCard(
                              image: 'assets/sg.png',
                              title: "Saint Gabriel's College",
                              subTitle: 'Science-Mathematics',
                              description: '2005-2017',
                            ),
                          ),
                          FadeAnimation(
                            2.7,
                            InfoCard(
                              image: 'assets/kmitl.png',
                              title:
                                  "King Mongkut's Institute \nof Technology Ladkrabang",
                              subTitle: 'Information Technology',
                              description: '2017-present',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeAnimation(
                            2.9,
                            Text(
                              'Careers',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          FadeAnimation(
                            3.1,
                            InfoCard(
                              image: 'assets/homepro.png',
                              title: "HomePro",
                              subTitle: 'Mobile Developer Internship',
                              description: 'Present',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeAnimation(
                            3.3,
                            Text(
                              'Projects',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          FadeAnimation(
                            3.5,
                            InfoCard(
                              image: 'assets/flutter.png',
                              title: "Flutter 100 Days",
                              subTitle: 'Actually 23 Days',
                              description: '',
                            ),
                          ),
                        ],
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

Widget SocialMedia(icon, title, url) {
  return InkWell(
    onTap: () => launch(url),
    child: Container(
      child: Column(
        children: <Widget>[
          IconButton(
            icon: FaIcon(icon),
            onPressed: () {},
            iconSize: 40.0,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white.withOpacity(0.7),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget SideBorder() {
  return Container(
    width: 1,
    height: 80,
    decoration: BoxDecoration(
      border: Border(
        right: BorderSide(
          color: Colors.white.withOpacity(0.5),
        ),
      ),
    ),
  );
}

Widget InfoCard({image, title, subTitle, description}) {
  return Container(
    // margin: EdgeInsets.only(bottom: 0.0),
    child: Row(
      children: <Widget>[
        Container(
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            // color: Colors.blueGrey,
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
            ),
          ),
        ),
        SizedBox(width: 20.0),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15.0,
                  height: 1.5,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

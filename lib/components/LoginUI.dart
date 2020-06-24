import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginUI extends StatefulWidget {
  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          ItemCard(
            title: 'LoginUI 1',
            subTitle: 'Just Ordinary Login Screen',
            image: 'assets/day12_LoginUI1.png',
            url: 'https://github.com/DsdlTon/Flutter100Days/tree/master/lib/day12',
          ),
          ItemCard(
            title: 'LoginUI 2',
            subTitle: 'Just Another Ordinary Login Screen',
            image: 'assets/day13_LoginUI2.png',
            url: 'https://github.com/DsdlTon/Flutter100Days/tree/master/lib/day13',
          ),
          ItemCard(
            title: 'LoginUI 3',
            subTitle: 'Ordinary Login Screen with orange color',
            image: 'assets/day14_LoginUI3.png',
            url: 'https://github.com/DsdlTon/Flutter100Days/tree/master/lib/day14',
          ),
          ItemCard(
            title: 'Signin & Login',
            subTitle:
                "Your Kid Writing in Bedroom's wall background Login Screen. Beautiful Right?",
            image: 'assets/day23_LoginSignIn.png',
            url: 'https://github.com/DsdlTon/Flutter100Days/tree/master/lib/day23',
          ),
        ],
      ),
    );
  }
}

Widget ItemCard({title, subTitle, image, url}) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.only(bottom: 20.0),
    child: Row(
      children: <Widget>[
        Container(
          height: 280.0,
          width: 150.0,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey[300],
                blurRadius: 30.0,
                offset: Offset(0, 10),
              ),
            ],
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(20.0),
            height: 230,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300],
                  blurRadius: 30.0,
                  offset: Offset(0, 10),
                ),
              ],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      subTitle,
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RaisedButton(
                    onPressed: () => launch(url),
                    color: Colors.grey[900],
                    child: Text(
                      'View Github',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Travel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          ItemCard(
            title: 'Photography Application',
            subTitle:
                'Camera And Me',
            image: 'assets/day22_Photography.png',
            url: 'https://github.com/DsdlTon/Flutter100Days/tree/master/lib/day22',
          ),
          ItemCard(
            title: 'Finding Inspiration',
            subTitle:
                'Out of Gas??, Come Closer.',
            image: 'assets/day1_Inspiration.png',
            url: 'https://github.com/DsdlTon/Flutter100Days/tree/master/lib/day1',
          ),
          ItemCard(
            title: 'Travel Guide',
            subTitle:
                "1's Rule of Travel: Money",
            image: 'assets/day2_TravelGuide.png',
            url: 'https://github.com/DsdlTon/Flutter100Days/tree/master/lib/day2',
          ),
          ItemCard(
            title: 'Travel Application',
            subTitle:
                "2's Rule of Travel: Money",
            image: 'assets/day11_TravelApplication.png',
            url: 'https://github.com/DsdlTon/Flutter100Days/tree/master/lib/day11',
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


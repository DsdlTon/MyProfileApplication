import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          ItemCard(
            title: 'Facebook UI',
            subTitle: "I'm Mark Secondberg.",
            image: 'assets/day19_Facebook.png',
            url: 'https://github.com/DsdlTon/Flutter100Days/tree/master/lib/day19',
          ),
          ItemCard(
            title: "Steve Nash's Documentary",
            subTitle: 'My Favourite Legend PointGuard in NBA History.',
            image: 'assets/day4_Documentary.png',
            url: 'https://github.com/DsdlTon/Flutter100Days/tree/master/lib/day4',
          ),
          ItemCard(
            title: 'Map Application',
            subTitle: 'First-use of Ripple Animation.',
            image: 'assets/day5_MapApplication.png',
            url: 'https://github.com/DsdlTon/Flutter100Days/tree/master/lib/day5',
          ),
          ItemCard(
            title: 'Exercise',
            subTitle: 'Try using Animation and PageTransition.',
            image: 'assets/day6_Exercise.png',
            url: 'https://github.com/DsdlTon/Flutter100Days/tree/master/lib/day6',
          ),
          ItemCard(
            title: 'SplashScreen',
            subTitle: "Animation's Combo!!!.\nFunny, is't it?",
            image: 'assets/day8_SplashScreen.png',
            url: 'https://github.com/DsdlTon/Flutter100Days/tree/master/lib/day8',
          ),
          ItemCard(
            title: 'Party Application',
            subTitle: "It's a Night Time!\nLet have some FUN.",
            image: 'assets/day9_partyApplication.png',
            url: 'https://github.com/DsdlTon/Flutter100Days/tree/master/lib/day9',
          ),
          ItemCard(
            title: 'Step Tutorial',
            subTitle: "3 Step to Heaven.",
            image: 'assets/day21_StepTutorial.png',
            url: 'https://github.com/DsdlTon/Flutter100Days/tree/master/lib/day21',
          ),
          ItemCard(
            title: 'Animation Button',
            subTitle: "Animation's practice.",
            image: 'assets/day7_AnimatedButton.png',
            url: 'https://github.com/DsdlTon/Flutter100Days/tree/master/lib/day7',
          ),
          ItemCard(
            title: 'Food Delivery',
            subTitle: "Coming Hot At your Door.",
            image: 'assets/day3_FoodDelivery.png',
            url: 'https://github.com/DsdlTon/Flutter100Days/tree/master/lib/day3',
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

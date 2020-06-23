import 'package:flutter/material.dart';

class ShopUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          ItemCard(
            title: "Shoe's Shop",
            subTitle:
                'My Dream Come True',
            image: 'assets/day15_ShoeShop.png',
          ),
          ItemCard(
            title: 'Carousal Application',
            subTitle:
                'What is the Downside to eating a Clock?',
            image: 'assets/day18_Carousal.png',
          ),
          ItemCard(
            title: 'E-Commerce Application',
            subTitle:
                "Spending's Day",
            image: 'assets/day16_ECommerce.png',
          ),
          ItemCard(
            title: "Sock's Shop",
            subTitle:
                'Mom!! Where is my another sock!!',
            image: 'assets/day20_SocketShop.png',
          ),
          ItemCard(
            title: "Furniture's Shop",
            subTitle:
                'Feeling Puffy',
            image: 'assets/day10_FurnituresShop.png',
          ),
        ],
      ),
    );
  }
}

Widget ItemCard({title, subTitle, image}) {
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
                    onPressed: () {},
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

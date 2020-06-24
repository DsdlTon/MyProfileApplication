import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Container(
        width: double.infinity,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/me2.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        // child: Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.bottomRight,
        //       colors: [
        //         Colors.black.withOpacity(0.9),
        //         Colors.black.withOpacity(0.8)
        //       ],
        //     ),
        //   ),
        child: Container(
          padding: EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('assets/me.jpg'),
                    child: Transform.translate(
                      offset: Offset(19, 17),
                      child: Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey[900],
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Supakrit Apinyanapong',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Active Status',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Column(
                children: <Widget>[
                  Contact(
                    icon: Icons.phone,
                    title: 'Contact',
                    intel: '065-536-3593',
                  ),
                  Contact(
                    icon: Icons.email,
                    title: 'E-mail',
                    intel: 'dsdlton@gmail.com',
                  ),
                  Contact(
                    icon: Icons.location_on,
                    title: 'Address',
                    intel: 'Central Ladprao',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}

Widget Contact({icon, title, intel}) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
              size: 20.0,
            ),
            SizedBox(width: 5.0),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 5.0),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            intel,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        ),
        SizedBox(height: 15.0),
      ],
    ),
  );
}

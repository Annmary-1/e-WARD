

import 'package:flutter/material.dart';
import 'package:ward_connect/screens/user/home_screen.dart';

void main() {
  runApp(Directionality(
    textDirection: TextDirection.ltr,
    child: Counsellor(),
  ));
}

class Counsellor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Counsellor Details',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
            // Add your home icon functionality here
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/waves.jpg'), // Replace with your background image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'Counsellor Details',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                ClipOval(
                  child: Image.asset(
                    'assets/ALIAS.png',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Ward Name:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 10.0),
                    Text('HORMIS NAGER'),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Name:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 10.0),
                    Text('ALIAS K THARIAN'),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Age:', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 10.0),
                    Text('54'),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Phone Number:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 10.0),
                    Text('9446128798'),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('House Number:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 10.0),
                    Text('25'),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('House Name:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 10.0),
                    Text('KOORAN'),
                  ],
                ),
                SizedBox(height: 10.0),
                /* SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Ration ID:', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 10.0),
                    Text('Your Ration ID data here'),
                  ],
                ), */
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Aadhaar Number:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 10.0),
                    Text('5163 8254 3467'),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Username:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 10.0),
                    Text('WUSER11'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

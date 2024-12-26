import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gtcci_app/Screens/help_screen.dart';
import 'package:flutter_gtcci_app/Screens/mis_membership_screen.dart';
import 'package:flutter_gtcci_app/Screens/mou_screen.dart';
import 'package:flutter_gtcci_app/Screens/social_screen.dart';

import 'about_screen.dart';
import 'event_screen.dart';
import 'media_main_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key, required this.title});

  final String title;

  @override
  State<DashboardScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DashboardScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff2af598),
              Color(0xff009efd),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/gtcci2.png',
                      width: 80,
                      height: 80,
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: Text(
                          'Gujrat Chamber Of Commerce \n and Industry',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 160, left: 4),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/vp.png',
                                width: 100,
                                height: 100,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Vice President \n Mr. Masoom Qamar',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.9),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 0),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/p.png',
                                width: 160,
                                height: 170,
                              ),
                              Text(
                                'President \n Mr. Sikandar Ishfaq',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.9),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 0),
                        Container(
                          margin: EdgeInsets.only(bottom: 130),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/svp.png',
                                width: 100,
                                height: 100,
                              ),
                              SizedBox(height: 7),
                              Container(
                                margin: EdgeInsets.only(bottom: 11),
                                child: Text(
                                  'Senior Vice President \n Mr. Asad Bhatti',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.9),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutScreen()),
                              );
                            },
                            child: Text(
                              'ABOUT',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.green),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                EdgeInsets.symmetric(
                                    vertical: 17, horizontal: 43),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                TextStyle(fontSize: 16),
                              ),
                              elevation: MaterialStateProperty.all<double>(5),
                            ),
                          ),
                          SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MediaScreen()),
                              );
                            },
                            child: Text(
                              'MEDIA',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.green),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                EdgeInsets.symmetric(
                                    vertical: 17, horizontal: 45),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                TextStyle(fontSize: 16),
                              ),
                              elevation: MaterialStateProperty.all<double>(5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Handle button tap
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EventScreen()),
                                );
                              },
                              child: Text(
                                'EVENTS',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.green),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                padding: MaterialStateProperty.all<
                                    EdgeInsetsGeometry>(
                                  EdgeInsets.symmetric(
                                      vertical: 17, horizontal: 40),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                  TextStyle(fontSize: 16),
                                ),
                                elevation: MaterialStateProperty.all<double>(5),
                              ),
                            ),
                            SizedBox(width: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Handle button tap
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HelpSceen()),
                                );
                              },
                              child: Text(
                                'HELP',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.green),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                padding: MaterialStateProperty.all<
                                    EdgeInsetsGeometry>(
                                  EdgeInsets.symmetric(
                                      vertical: 17, horizontal: 49),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                  TextStyle(fontSize: 16),
                                ),
                                elevation: MaterialStateProperty.all<double>(5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Handle button tap
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MouScreen()),
                              );
                            },
                            child: Text(
                              'MOU',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.green),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                EdgeInsets.symmetric(
                                    vertical: 17, horizontal: 55),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                TextStyle(fontSize: 16),
                              ),
                              elevation: MaterialStateProperty.all<double>(5),
                            ),
                          ),
                          SizedBox(width: 15),
                          ElevatedButton(
                            onPressed: () {
                              // Handle button tap
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SocialScreen()),
                              );
                            },
                            child: Text(
                              'SOCIAL',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.green),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                EdgeInsets.symmetric(
                                    vertical: 17, horizontal: 40),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                TextStyle(fontSize: 16),
                              ),
                              elevation: MaterialStateProperty.all<double>(5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 12),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle button tap
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MISMembershipScreen()),
                          );
                        },
                        child: Text(
                          'MIS (ONLY FOR MEMBERSHIPS)',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          textStyle: MaterialStateProperty.all<TextStyle>(
                            TextStyle(fontSize: 16),
                          ),
                          elevation: MaterialStateProperty.all<double>(5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

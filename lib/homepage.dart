import 'package:flutter/material.dart';
import 'package:gymapp/customImage_screen.dart';

import 'goal.dart';

class Homepage extends StatefulWidget {
  // Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Home workout for men',
            textAlign: TextAlign.justify,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/arm & chest.jpg'),
                          fit: BoxFit.fill)),
                  accountName: Text(""),
                  accountEmail: Text('')),
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Training Schedule'),
              onLongPress: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.watch),
              title: Text('Reminder'),
              onLongPress: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Preferred language'),
              onLongPress: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onLongPress: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Card(
            child: Container(
              height: 100,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Set a weekly goal for a better body shape',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                      // ignore: deprecated_member_use
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        color: Colors.amberAccent,
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Goal()));
                        },
                        child: Text('SET A GOAL'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          CustomImageScreen(
              title: 'ARMS & CHEST WORKOUT',
              imagePath: "assets/arm & chest.jpg",
              ontap: () {}
              ),
          CustomImageScreen(
              title: 'ABS WORKOUT', imagePath: "assets/abs.jpg", 
              ontap: () {}
              ),
          CustomImageScreen(
              title: 'BACK & SHOULDER WORKOT',
              imagePath: "assets/back.jpg",
              ontap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Goal()));
              }
              ),
          CustomImageScreen(
              title: 'LEG WORKOUT',
              imagePath: "assets/legworkout.jpg",
              ontap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Goal()));
              }
              ),
          // Column(
          //   children: [
          //     Card(
          //       child: Container(
          //         height: 120,
          //         width: double.infinity,
          //         decoration: BoxDecoration(
          //             image: DecorationImage(
          //           image: AssetImage("assets/arm & chest.jpg"),
          //           fit: BoxFit.cover,
          //         )),
          //         child: Text(
          //           'ARMS & CHEST WORKOUT',
          //           style: TextStyle(
          //               fontWeight: FontWeight.bold,
          //               fontSize: 20,
          //               color: Colors.white),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // Card(
          //   child: Container(
          //     height: 120,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //         image: DecorationImage(
          //       image: AssetImage("assets/abs.jpg"),
          //       fit: BoxFit.cover,
          //     )),
          //     child: Text(
          //       'ABS WORKOUT',
          //       style: TextStyle(
          //           fontWeight: FontWeight.bold,
          //           fontSize: 20,
          //           color: Colors.white),
          //     ),
          //   ),
          // ),
          // Card(
          //   child: Container(
          //     height: 120,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //         image: DecorationImage(
          //       image: AssetImage("assets/back.jpg"),
          //       fit: BoxFit.cover,
          //     )),
          //     child: Text(
          //       'BACK & SHOULDER WORKOUT',
          //       style: TextStyle(
          //           fontWeight: FontWeight.bold,
          //           fontSize: 20,
          //           color: Colors.white),
          //     ),
          //   ),
          // ),
          // Card(
          //   child: Container(
          //     height: 110,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //         image: DecorationImage(
          //       image: AssetImage("assets/legworkout.jpg"),
          //       fit: BoxFit.cover,
          //     )),
          //     child: Text(
          //       'LEG WORKOUT',
          //       style: TextStyle(
          //           fontWeight: FontWeight.bold,
          //           fontSize: 20,
          //           color: Colors.white),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}

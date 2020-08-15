import 'package:flutter/material.dart';
import 'package:giveaway/screens/bar/cate.dart';
import 'package:giveaway/screens/bar/chat.dart';
import 'package:giveaway/screens/bar/home.dart';
import 'package:giveaway/screens/bar/profile.dart';

class BarRoute extends StatefulWidget {
  BarRoute({Key key, this.title}) : super(key: key);
  final String title; // => Flutter Home Demo Page

  @override
  BarRouteState createState() => new BarRouteState();
}

class BarRouteState extends State<BarRoute> {
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page = HomeSreen();
    if (tabIndex == 0) {
      page = HomeSreen();
    }
    if (tabIndex == 1) {
      page = CateGreen();
    }
    if (tabIndex == 2) {
      page = ChatSreen();
    }
    if (tabIndex == 3) {
      page = ProfileScreen();
    }
    return Scaffold(
      body: page,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 30),
        height: 70,
        width: 70,
        child: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/search');
          },
          icon: Icon(
            Icons.search,
            size: 40,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
            ),
          ],
        ),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              padding: EdgeInsets.all(15),
              onPressed: () {
                setState(() {
                  tabIndex = 0;
                });
              },
              icon: Icon(
                Icons.home,
                color: tabIndex == 0 ? Colors.cyan : Colors.grey,
              ),
            ),
            IconButton(
              padding: EdgeInsets.all(20),
              onPressed: () {
                setState(() {
                  tabIndex = 1;
                });
              },
              icon: Icon(
                Icons.grid_on,
                color: tabIndex == 1 ? Colors.cyan : Colors.grey,
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
            ),
            IconButton(
              padding: EdgeInsets.all(20),
              onPressed: () {
                setState(() {
                  tabIndex = 2;
                });
              },
              icon: Icon(
                Icons.chat_bubble_outline,
                color: tabIndex == 2 ? Colors.cyan : Colors.grey,
              ),
            ),
            IconButton(
              padding: EdgeInsets.all(20),
              onPressed: () {
                setState(() {
                  tabIndex = 3;
                });
              },
              icon: Icon(
                Icons.face,
                color: tabIndex == 3 ? Colors.cyan : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

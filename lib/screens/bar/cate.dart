import 'package:flutter/material.dart';

import 'dart:math' as math;

class CateScreen extends StatefulWidget {
  CateScreen({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<CateScreen>
    with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        pageSnapping: true,
        controller: PageController(
          initialPage: 1,
          viewportFraction: 0.8,
          keepPage: false,
        ),
        children: [
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(color: Colors.red),
          ),
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(color: Colors.black),
          ),
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(color: Colors.red),
          ),
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(color: Colors.red),
          ),
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(color: Colors.red),
          ),
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(color: Colors.red),
          ),
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(color: Colors.red),
          ),
        ],
      ),
    );
  }
}

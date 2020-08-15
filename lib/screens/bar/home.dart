import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomeSreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              size: 24,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.chat_bubble_outline),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            child: Text(
              "Tiết kiệm, giúp đỡ và chia sẻ",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan),
            ),
          ),
          First(),
          Title(),
          Container(
            height: 120.0,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int itemIndex) {
                  return Container(
                    height: 100.0,
                    width: 100.0,
                    margin: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(24)),
                  );
                }),
          ),
          Title(),
          Product(),
          Product(),
          Product(),
          Product(),
          Product(),
          Title(),
          Container(
            height: 120.0,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int itemIndex) {
                return Container(
                  height: 120.0,
                  width: 100.0,
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(24)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Hàng hóa mới 99%",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.cyan),
          ),
          FlatButton(
            child: Text("Tẩt cả"),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 100,
      margin: EdgeInsets.only(left: 12, right: 12, bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
            ),
          ),
          Container(
            width: width - 140,
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Text(
                  'Giầy thể dục, còn mới, không cần xài nữa',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  'Mới mua đc 2-3 ngày, thì bố mua cái mới, thế là bỏ cmnr thôi ',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Sliders(),
        Positioned(
          left: 10,
          bottom: 30,
          child: Transform.rotate(
            alignment: Alignment.topLeft,
            angle: -math.pi / 2,
            child: Row(
              children: [
                FlatButton(
                  padding: EdgeInsets.all(7),
                  child: Text(
                    'Gần đầy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.cyan,
                    ),
                  ),
                  onPressed: null,
                ),
                FlatButton(
                  padding: EdgeInsets.all(7),
                  child: Text('Quanh bạn'),
                  onPressed: null,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Sliders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 315,
      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: PageController(
          initialPage: 1,
          viewportFraction: 0.6,
        ),
        children: [
          Container(
            height: 315,
            width: 200,
            margin: EdgeInsets.all(6),
            child: Container(
              height: 315,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
          Container(
            height: 315,
            width: 180,
            margin: EdgeInsets.all(6),
            padding: EdgeInsets.only(bottom: 40),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
          Container(
            height: 315,
            width: 180,
            margin: EdgeInsets.all(6),
            padding: EdgeInsets.only(bottom: 40),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

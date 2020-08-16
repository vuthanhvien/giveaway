import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomeSreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
        padding: EdgeInsets.only(bottom: 24),
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
            height: 190.0,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int itemIndex) {
                return Container(
                  height: 190.0,
                  width: 150.0,
                  margin: EdgeInsets.all(6),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            'Xe đẩy em bé nhỏ có trục quay',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ))
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(24),
            margin: EdgeInsets.only(top: 12),
            decoration: BoxDecoration(
              color: Colors.cyan,
            ),
            width: width,
            child: Wrap(
              children: [
                Text(
                  '"',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 46,
                  ),
                ),
                Text(
                  'Nếu bạn sở hữu những đồ đạc không sử dụng, hay mang đi cho., tăng những người cần nó hơn. Bên cạnh đó, bạn cũng có thể dễ dạng nhận đồ dễ dàng hơn',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          )
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
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.cyan,
            ),
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
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Container(
                  height: 5,
                ),
                Text(
                  'Mới mua đc 2-3 ngày, thì bố mua cái mới, thế là bỏ cmnr thôi ',
                  style: TextStyle(
                    fontSize: 12,
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
      child: PageView.builder(
        itemCount: 6,
        itemBuilder: (context, position) {
          print(position);
          return Container(
            color: position % 2 == 0 ? Colors.pink : Colors.cyan,
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
          );
        },
        scrollDirection: Axis.horizontal,
        controller: PageController(
          initialPage: 1,
          viewportFraction: 0.6,
        ),
      ),
    );
  }
}

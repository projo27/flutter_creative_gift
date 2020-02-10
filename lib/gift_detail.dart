import 'dart:ui';

import 'package:creative_gift/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'colors.dart';
import 'colors.dart';
import 'colors.dart';
import 'colors.dart';
import 'colors.dart';
import 'colors.dart';
import 'colors.dart';
import 'colors.dart';
import 'colors.dart';
import 'colors.dart';
import 'colors.dart';
import 'colors.dart';
import 'colors.dart';
import 'widgets/button_app_bar.dart';

class GiftDetailPage extends StatefulWidget {
  const GiftDetailPage({Key key, @required String this.title, Color this.color})
      : super(key: key);

  final String title;
  final Color color;

  @override
  _GiftDetailPageState createState() => _GiftDetailPageState();
}

class _GiftDetailPageState extends State<GiftDetailPage> {
  Color secondColor = ThemeColors.white;

  void initState() {
    super.initState();
    secondColor = ThemeColors.secondColor(widget.color ?? ThemeColors.skyBlue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.color ?? ThemeColors.orange,
      body: Hero(
        tag: widget.title,
        child: SafeArea(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            color: widget.color ?? ThemeColors.orange,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                CustomPaint(
                  painter: DrawCircle(secondColor),
                  willChange: true,
                ),
                Positioned(
                    top: 50,
                    right: 50,
                    // right: 100,
                    child: Image.asset("assets/images/gift_box.png")),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AppBarButton(),

                      /// Information
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 20,
                            left: 30,
                          ),
                          width: MediaQuery.of(context).size.width / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Thermo Mug"),
                              Text(
                                "Reusable Glasses",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "PRICE",
                                style: TextStyle(
                                    fontWeight: FontWeight.w100, fontSize: 12),
                              ),
                              Text(
                                "\$ 11,43",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "VOLUME",
                                style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "350 ml",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      /// Sweetener
                      Container(
                        height: 300,
                        child: Stack(
                          overflow: Overflow.visible,
                          // alignment: Alignment.topCenter,
                          children: <Widget>[
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                // alignment: Alignment.bottomCenter,
                                height: 260,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                  color: ThemeColors.white,
                                ),
                              ),
                            ),

                            /// selectable color
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: Container(
                                height: 160,
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(
                                    left: 30, right: 30, top: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                  color: ThemeColors.white50,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Color : ",
                                      style:
                                          TextStyle(color: ThemeColors.brown50),
                                    ),
                                    Chip(label: Text("In Stock"))
                                  ],
                                ),
                              ),
                            ),

                            /// selectable type
                            Positioned(
                              left: 30,
                              right: 30,
                              child: Container(
                                alignment: Alignment.topCenter,
                                height: 80,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: ThemeColors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: ThemeColors.black50,
                                        blurRadius: 10,
                                        offset: Offset(0, 4),
                                      )
                                    ]),
                                child: Text(
                                  "Gundul",
                                  style: TextStyle(color: ThemeColors.brown50),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                // alignment: Alignment.bottomCenter,
                                child: Center(
                                  child: Text(
                                    "Add To Chart",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                height: 55,
                                margin: EdgeInsets.only(left: 20, right: 20),
                                decoration: BoxDecoration(
                                  color: ThemeColors.orange,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ButtonAppBar(
            icon: Icon(AntDesign.left),
            onPress: () {
              Navigator.of(context).pop();
            },
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
          ButtonAppBar(
            icon: Icon(FontAwesome.heart_o, color: ThemeColors.brown),
            selectedIcon: Icon(FontAwesome.heart, color: ThemeColors.orange),
            isSelected: false,
            backgroundColor: ThemeColors.white,
          ),
        ],
      ),
    );
  }
}

class DrawCircle extends CustomPainter {
  Paint _paint;

  DrawCircle(Color color) {
    _paint = Paint()
      ..color = color ?? ThemeColors.white
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(size.width + 120, 50.0), 300.0, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

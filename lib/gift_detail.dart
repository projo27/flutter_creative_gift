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
import 'widgets/button_app_bar.dart';
import 'widgets/dots.dart';

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
      backgroundColor: Colors.transparent,
      body: Hero(
        tag: widget.title,
        child: Material(
          color: widget.color ?? ThemeColors.skyBlue,
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
                              top: 10,
                              left: 30,
                            ),
                            width: MediaQuery.of(context).size.width / 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Thermo Mug",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Text(
                                  "Reusable Glasses",
                                  style: TextStyle(
                                    fontSize: 30,
                                    height: 1.2,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                Text(
                                  "PRICE",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  "\$ 11,43",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                Expanded(
                                  child: Container(),
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
                                Expanded(child: Container(), flex: 3),
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
                                  alignment: Alignment.topLeft,
                                  padding: EdgeInsets.only(
                                      top: 42, left: 30, right: 30),
                                  height: 260,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      topRight: Radius.circular(40),
                                    ),
                                    color: ThemeColors.white,
                                  ),
                                  child: Container(
                                    height: 45,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "Details",
                                              style: TextStyle(
                                                color: ThemeColors.orange50,
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Dots(
                                              color: ThemeColors.orange50,
                                              size: 3,
                                              isSelected: true,
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 20),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "Ordering Info",
                                              style: TextStyle(
                                                color: ThemeColors.brown75,
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Dots(
                                              color: ThemeColors.orange50,
                                              size: 3,
                                              isSelected: false,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              /// selectable color
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child: Container(
                                  height: 170,
                                  alignment: Alignment.topLeft,
                                  padding: EdgeInsets.only(
                                      left: 30, right: 30, top: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      topRight: Radius.circular(40),
                                    ),
                                    color: ThemeColors.white50,
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Icon(
                                            Icons.palette,
                                            size: 16,
                                          ),
                                          Text(
                                            " Color : ",
                                            style: TextStyle(
                                              color: ThemeColors.brown50,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          Expanded(child: Container()),
                                          Chip(
                                            backgroundColor: Colors.white,
                                            padding: EdgeInsets.all(2),
                                            //labelPadding: EdgeInsets.all(2),
                                            label: Text(
                                              "in stock",
                                              style: TextStyle(
                                                color: widget.color ??
                                                    ThemeColors.skyBlue,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                children: ThemeColors.colorList
                                                    .map(
                                                      (c) => Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          color: c,
                                                        ),
                                                        height: 25,
                                                        width: 25,
                                                        margin: EdgeInsets.only(
                                                          right: 5,
                                                        ),
                                                      ),
                                                    )
                                                    .toList(),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 115,
                                            margin: EdgeInsets.only(left: 30),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  "Material:",
                                                  style: TextStyle(
                                                      color:
                                                          ThemeColors.black50,
                                                      fontSize: 13),
                                                ),
                                                Text(
                                                  "Silicone",
                                                  style: TextStyle(
                                                    color: ThemeColors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      )
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
                                  padding: EdgeInsets.all(15),
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
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: ThemeColors.colorCategories
                                          .map(
                                            (f) => Container(
                                              height: 50,
                                              width: 80,
                                              margin:
                                                  EdgeInsets.only(right: 15),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: f,
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    ),
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

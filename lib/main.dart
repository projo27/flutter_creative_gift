import 'package:creative_gift/colors.dart';
import 'package:creative_gift/gift_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'colors.dart';
import 'colors.dart';
import 'colors.dart';
import 'widgets/button_app_bar.dart';
import 'widgets/dots.dart';
import 'widgets/tab_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creative Gift',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          body1: TextStyle(color: ThemeColors.white),
          body2: TextStyle(color: ThemeColors.brown, fontSize: 16),
          display1: TextStyle(
            color: ThemeColors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        fontFamily: 'Poppins',
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0.0,
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexTabSelection = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    indexTabSelection = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Container(
        width: MediaQuery.of(context).size.width - 50,
        color: ThemeColors.brown75,
        child: SafeArea(
          child: Material(
            color: Colors.transparent,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topRight,
                  // padding: EdgeInsets.only(right: 20, top: 20),
                  child: IconButton(
                    icon: Icon(Icons.close),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: ThemeColors.brown,
      body: SafeArea(
        child: Container(
          color: ThemeColors.brown,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              HomePageAppBar(),
              Expanded(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    ///Tab Item
                    Container(
                      alignment: Alignment.bottomLeft,
                      width: 70,
                      height: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TabItem(
                            text: "Sale",
                            onPress: () {
                              setState(() {
                                indexTabSelection = 0;
                              });
                            },
                            isSelected: indexTabSelection == 0 ? true : false,
                          ),
                          TabItem(
                              text: "New",
                              onPress: () {
                                setState(() {
                                  indexTabSelection = 1;
                                });
                              },
                              isSelected:
                                  indexTabSelection == 1 ? true : false),
                          TabItem(
                              text: "Popular",
                              onPress: () {
                                setState(() {
                                  indexTabSelection = 2;
                                });
                              },
                              isSelected:
                                  indexTabSelection == 2 ? true : false),
                          TabItem(
                            text: "Full List",
                            onPress: () {
                              setState(() {
                                indexTabSelection = 3;
                              });
                            },
                            isSelected: indexTabSelection == 3 ? true : false,
                          ),
                        ],
                      ),
                    ),

                    ///Content
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ///Header Text
                            Text("Categories",
                                style: Theme.of(context).textTheme.display1),
                            SizedBox(height: 20),
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.all(30),
                                decoration: BoxDecoration(
                                  color: ThemeColors.brown50,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                  ),
                                ),

                                /// The List of Gift
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      GiftListItem(
                                        imgSrc: "assets/images/flower_2.png",
                                        title: "Edible Bouquet",
                                        type: "Sweet",
                                        price: 50.0,
                                        color: ThemeColors.skyBlue,
                                        onPress: () {
                                          Navigator.of(context).push(
                                            PageRouteBuilder(
                                              transitionDuration:
                                                  Duration(seconds: 1),
                                              pageBuilder: (_, __, ___) =>
                                                  GiftDetailPage(
                                                title: "Edible Bouquet",
                                                color: ThemeColors.skyBlue,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                      GiftListItem(
                                        imgSrc: "assets/images/gift_box.png",
                                        title: "Gift Box Blue",
                                        type: "Unknown",
                                        price: 10.0,
                                        color: ThemeColors.orange50,
                                        onPress: () {
                                          Navigator.of(context).push(
                                            PageRouteBuilder(
                                              transitionDuration:
                                                  Duration(seconds: 1),
                                              pageBuilder: (_, __, ___) =>
                                                  GiftDetailPage(
                                                title: "Gift Box Blue",
                                                color: ThemeColors.orange50,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                      GiftListItem(
                                        imgSrc: "assets/images/gift_box_2.png",
                                        title: "Gift Box Redt",
                                        type: "Unknown",
                                        price: 20.0,
                                        color: ThemeColors.orange,
                                        onPress: () {
                                          Navigator.of(context).push(
                                            PageRouteBuilder(
                                              transitionDuration:
                                                  Duration(seconds: 1),
                                              pageBuilder: (_, __, ___) =>
                                                  GiftDetailPage(
                                                title: "Gift Box Redt",
                                                color: ThemeColors.orange,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                      GiftListItem(
                                        imgSrc: "assets/images/gift_box_3.png",
                                        title: "Gift Box Yellow",
                                        type: "Unknown",
                                        price: 10.0,
                                        color: ThemeColors.skyBlue50,
                                        onPress: () {
                                          Navigator.of(context).push(
                                            PageRouteBuilder(
                                              transitionDuration:
                                                  Duration(seconds: 1),
                                              pageBuilder: (_, __, ___) =>
                                                  GiftDetailPage(
                                                title: "Gift Box Yellow",
                                                color: ThemeColors.skyBlue50,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GiftListItem extends StatefulWidget {
  Color color;
  String imgSrc = "assets/images/gift_box.png";
  double price = 0.0;

  String title = "_", type = "-";

  GiftListItem({
    Key key,
    this.color,
    String this.imgSrc,
    @required String this.title,
    @required String this.type,
    @required double this.price,
    VoidCallback this.onPress,
  }) : super(key: key);

  final VoidCallback onPress;
  @override
  _GiftListItemState createState() => _GiftListItemState();
}

class _GiftListItemState extends State<GiftListItem> {
  bool _isFavorite = false;

  @override
  void initState() {
    super.initState();
    _isFavorite = false;
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.title,
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.only(left: 12),
          height: 190,
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: this.widget.color ?? ThemeColors.orange,
          ),
          child: Material(
            type: MaterialType.card,
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.elliptical(18, 5),
              bottomLeft: Radius.elliptical(18, 5),
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            child: InkWell(
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(18, 5),
                bottomLeft: Radius.elliptical(18, 5),
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              onTap: widget.onPress ?? null,
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.transparent,
                child: Stack(
                  children: <Widget>[
                    /// Gift List Item Image
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        widget.imgSrc,
                        width: MediaQuery.of(context).size.width / 5,
                        height: 120,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        /// Gift List Item Text
                        children: <Widget>[
                          Text(
                            widget.title,
                            style: TextStyle(
                              fontSize: 18,
                              color: ThemeColors.brown,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Type : ",
                            style: TextStyle(
                              fontSize: 12,
                              color: ThemeColors.brown50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            widget.type,
                            style: TextStyle(
                              fontSize: 12,
                              color: ThemeColors.brown50,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "\$ ${widget.price}",
                            style: TextStyle(
                              fontSize: 18,
                              color: ThemeColors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        width: 40,
                        height: 30,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              _isFavorite = !_isFavorite;
                            });
                          },
                          color: _isFavorite
                              ? ThemeColors.orange
                              : ThemeColors.brown,
                          splashColor: ThemeColors.orange,
                          highlightColor: ThemeColors.orange,
                          iconSize: 20,
                          icon: Icon(_isFavorite
                              ? FontAwesome.heart
                              : FontAwesome.heart_o),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ButtonAppBar(
            icon: Icon(FontAwesome5Solid.grip_lines),
            onPress: () {
              Scaffold.of(context).openDrawer();
              print("Menu Clicked");
            },
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
          // SizedBox.expand(),
          ButtonAppBar(
            icon: Icon(Icons.search),
          ),
          ButtonAppBar(
            icon: Icon(
              Icons.shopping_basket,
              color: ThemeColors.brown,
            ),
            isSelected: true,
            isShowIndicator: true,
            backgroundColor: ThemeColors.white,
          ),
        ],
      ),
    );
  }
}

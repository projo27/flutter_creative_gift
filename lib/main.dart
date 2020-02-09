import 'package:creative_gift/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

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

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
                          TabItem(text: "Sale"),
                          TabItem(text: "New"),
                          TabItem(text: "Popular"),
                          TabItem(
                            text: "Full List",
                            isSelected: true,
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
                                          color: ThemeColors.skyBlue),
                                      GiftListItem(
                                          imgSrc: "assets/images/gift_box.png",
                                          title: "Gift Box Blue",
                                          type: "Unknown",
                                          price: 10.0,
                                          color: ThemeColors.orange50),
                                      GiftListItem(
                                          imgSrc:
                                              "assets/images/gift_box_2.png",
                                          title: "Gift Box Redt",
                                          type: "Unknown",
                                          price: 20.0,
                                          color: ThemeColors.orange),
                                      GiftListItem(
                                          imgSrc:
                                              "assets/images/gift_box_3.png",
                                          title: "Gift Box Yellow",
                                          type: "Unknown",
                                          price: 10.0,
                                          color: ThemeColors.skyBlue50),
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

  GiftListItem(
      {Key key,
      this.color,
      String this.imgSrc,
      @required String this.title,
      @required String this.type,
      @required double this.price})
      : super(key: key);

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
    return Container(
      padding: EdgeInsets.only(left: 12),
      height: 200,
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
          onTap: () {
            print("Gift Item ${widget.title} Clicked");
          },
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
                    width: 100,
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
                      SizedBox(height: 15),
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
                      SizedBox(height: 20),
                      Text(
                        "\$ ${widget.price}",
                        style: TextStyle(
                          fontSize: 15,
                          color: ThemeColors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _isFavorite = !_isFavorite;
                      });
                    },
                    color: _isFavorite ? ThemeColors.orange : ThemeColors.brown,
                    splashColor: ThemeColors.orange,
                    highlightColor: ThemeColors.orange,
                    iconSize: 20,
                    icon: Icon(
                        _isFavorite ? FontAwesome.heart : FontAwesome.heart_o),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  const TabItem({
    Key key,
    this.text = "",
    this.isSelected = false,
  }) : super(key: key);
  final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    Widget dots = Dots(isSelected: isSelected);

    FontWeight fontWeight = isSelected ? FontWeight.bold : FontWeight.w300;

    return Center(
      child: RotatedBox(
        quarterTurns: -1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                color: ThemeColors.white,
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: fontWeight,
              ),
            ),
            dots,
          ],
        ),
      ),
    );
  }
}

class Dots extends StatelessWidget {
  const Dots({
    Key key,
    this.isSelected = false,
    this.color,
  }) : super(key: key);

  final bool isSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    Color isSelectedColor = color ?? ThemeColors.orange50;
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: isSelected ? isSelectedColor : Colors.transparent,
        shape: BoxShape.circle,
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
            icon: Icon(FontAwesome5Solid.equals),
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
            icon: Icon(Icons.shopping_basket),
            isSelected: true,
          ),
        ],
      ),
    );
  }
}

class ButtonAppBar extends StatefulWidget {
  const ButtonAppBar({Key key, @required this.icon, this.isSelected: false})
      : super(key: key);

  final Icon icon;
  final bool isSelected;

  @override
  _ButtonAppBarState createState() => _ButtonAppBarState();
}

class _ButtonAppBarState extends State<ButtonAppBar> {
  Color backgroundColor, iconColor;

  @override
  Widget build(BuildContext context) {
    backgroundColor =
        (widget.isSelected) ? ThemeColors.white : Colors.transparent;
    iconColor = (widget.isSelected) ? ThemeColors.brown : ThemeColors.white;

    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor,
        ),
        //color: ThemeColors.white,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        padding: EdgeInsets.all(15),
        child: Icon(
          widget.icon.icon,
          color: iconColor,
        ));
  }
}

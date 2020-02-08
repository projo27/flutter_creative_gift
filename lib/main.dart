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
        fontFamily: 'Montserrat',
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
                    Container(
                      alignment: Alignment.bottomLeft,
                      width: 80,
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
                    )
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
    Widget dots = isSelected
        ? Text(
            ".",
            style: TextStyle(
              color: ThemeColors.orange50,
              fontWeight: FontWeight.w900,
            ),
          )
        : Container();
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
                  fontWeight: fontWeight),
            ),
            dots,
          ],
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
    iconColor = (widget.isSelected) ? ThemeColors.black : ThemeColors.white;

    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor,
        ),
        //color: ThemeColors.white,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        padding: EdgeInsets.all(10),
        child: Icon(
          widget.icon.icon,
          color: iconColor,
        ));
  }
}

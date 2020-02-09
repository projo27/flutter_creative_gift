import 'package:creative_gift/colors.dart';
import 'package:flutter/material.dart';

class GiftDetailPage extends StatefulWidget {
  const GiftDetailPage({Key key, @required String this.title}) : super(key: key);

  final String title;

  @override
  _GiftDetailPageState createState() => _GiftDetailPageState();
}

class _GiftDetailPageState extends State<GiftDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ThemeColors.skyBlue,
        child: Hero(
          tag: widget.title,
          child: Container(
            color: ThemeColors.skyBlue,
          ),
        ),
      ),
    );
  }
}

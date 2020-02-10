import 'package:creative_gift/widgets/dots.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import '../colors.dart';
import '../colors.dart';

class ButtonAppBar extends StatefulWidget {
  const ButtonAppBar(
      {Key key,
      @required this.icon,
      this.selectedIcon,
      this.isSelected: false,
      this.isShowIndicator,
      this.backgroundColor,
      Function this.onPress})
      : super(key: key);

  final Icon icon, selectedIcon;
  final bool isSelected;
  final Color backgroundColor;
  final bool isShowIndicator;
  final Function onPress;

  @override
  _ButtonAppBarState createState() => _ButtonAppBarState();
}

class _ButtonAppBarState extends State<ButtonAppBar> {
  Color iconColor;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    // backgroundColor =
    //     (widget.isSelected) ? ThemeColors.white : Colors.transparent;
    icon = (widget.isSelected)
        ? (widget.selectedIcon ?? widget.icon)
        : widget.icon;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: widget.backgroundColor != null
            ? [
                BoxShadow(
                  color: ThemeColors.black50,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                )
              ]
            : [],
        color: widget.backgroundColor,
      ),
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Stack(
        children: <Widget>[
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: widget.onPress ?? () {},
              child: Container(
                padding: EdgeInsets.all(15),
                child: Icon(
                  icon.icon,
                  color: icon.color ?? Colors.white,
                  size: 18,
                ),
              ),
            ),
          ),
          Positioned(
            left: 28,
            top: 28,
            child: Dots(
              color: ThemeColors.orange,
              isSelected: widget.isShowIndicator ?? false,
              size: 4.0,
            ),
          )
        ],
      ),
    );
  }
}

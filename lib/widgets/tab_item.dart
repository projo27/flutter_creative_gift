import 'package:flutter/material.dart';

import '../colors.dart';
import 'dots.dart';

class TabItem extends StatelessWidget {
  const TabItem({
    Key key,
    this.text = "",
    this.isSelected = false,
    this.textColor,
    this.dotColor,
    this.isRotate = true,
    this.onPress,
  }) : super(key: key);
  final String text;
  final bool isSelected, isRotate;
  final Color textColor, dotColor;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    Widget dots = Dots(isSelected: isSelected);

    FontWeight fontWeight = isSelected ? FontWeight.bold : FontWeight.w300;

    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(10),
      type: MaterialType.button,
      child: InkWell(
        onTap: onPress,
        borderRadius: BorderRadius.circular(10),
        child: Center(
          child: RotatedBox(
            quarterTurns: isRotate ? -1 : 0,
            child: Container(
              padding: EdgeInsets.only(left : 15, right: 15),
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(
                      color: textColor ?? ThemeColors.white,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: fontWeight,
                    ),
                  ),
                  dots,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

import '../colors.dart';

class Dots extends StatelessWidget {
  const Dots({
    Key key,
    this.isSelected = false,
    this.color,
    this.size,
  }) : super(key: key);

  final bool isSelected;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    Color isSelectedColor = color ?? ThemeColors.orange50;
    return Container(
      padding: EdgeInsets.all(size ?? 3),
      decoration: BoxDecoration(
        color: isSelected ? isSelectedColor : Colors.transparent,
        shape: BoxShape.circle,
      ),
    );
  }
}

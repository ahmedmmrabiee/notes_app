import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isSelectedColor, required this.theColor}) : super(key: key);

  final bool isSelectedColor;
  final Color theColor;
  @override
  Widget build(BuildContext context) {
    return isSelectedColor ?  CircleAvatar(
      backgroundColor: Colors.white,
      radius: 28.0,
      child:  CircleAvatar(
        backgroundColor: theColor,
        radius: 24.0,
      ),
    ) :  CircleAvatar(
      backgroundColor: theColor,
      radius: 24.0,
    );
  }
}
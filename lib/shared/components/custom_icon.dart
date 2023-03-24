import 'package:flutter/material.dart';
class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key, required this.theIcon, required this.onPressedFunc}) : super(key: key);

  final void Function()? onPressedFunc;
  final IconData theIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressedFunc,
         icon: Icon(theIcon, size: 28,
         ),

        ),
      ),
    );
  }
}
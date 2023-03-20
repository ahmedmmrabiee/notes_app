import 'package:flutter/material.dart';

import 'custom_icon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.theIcon}) : super(key: key);

  final String title;
  final IconData theIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [

        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        CustomIcon(theIcon: theIcon),

      ],
    );
  }
}



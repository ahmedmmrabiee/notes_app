import 'package:flutter/material.dart';

import '../const/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onTapButton}) : super(key: key);

  final void Function()? onTapButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapButton,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Center(
          child: Text(

            'Add',
            style: TextStyle(color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),

          ),
        ),
      ),
    );
  }
}
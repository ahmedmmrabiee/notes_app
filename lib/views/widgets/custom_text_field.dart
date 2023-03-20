

import 'package:flutter/material.dart';

import '../../constants.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hintTitle,  this.maxLinesNum = 1}) : super(key: key);

  final String hintTitle;
  final int maxLinesNum;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLinesNum,
      cursorColor: kPrimaryColor,
      keyboardType: TextInputType.text,
      //style: TextStyle(color: kPrimaryColor),

      decoration: InputDecoration(
        labelText: hintTitle,
        labelStyle: const TextStyle(
            color: kPrimaryColor,
      ),

        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),

      ),


    );
  }

  OutlineInputBorder buildBorder([color]){
    return OutlineInputBorder(

      borderRadius: BorderRadius.circular(16.0,),
      borderSide:  BorderSide(
          color: color ?? Colors.white),
    );
  }
}
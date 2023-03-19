import 'package:flutter/material.dart';

import '../../constants.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimaryColor,
      keyboardType: TextInputType.text,

      decoration: InputDecoration(
        labelText: 'Title',
        labelStyle: const TextStyle(color: Colors.white),
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
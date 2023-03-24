

import 'package:flutter/material.dart';

import '../const/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hintTitle,  this.maxLinesNum = 1, this.onSaved, this.onChangedFunc, }) : super(key: key);

  final void Function(String?)? onChangedFunc;
  final String hintTitle;
  final int maxLinesNum;

  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChangedFunc,
      onSaved: onSaved,
      validator: (value){
       if (value?.isEmpty ?? true){
         return 'must not be empty';
       }else {
         return null;
       }
      },
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
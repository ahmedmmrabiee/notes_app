import 'package:flutter/material.dart';



import 'custom_button.dart';
import 'custom_text_field.dart';
class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 16.0,),
            CustomTextField(hintTitle: 'Title',),
            SizedBox(height: 16.0,),
            CustomTextField(hintTitle: 'Content', maxLinesNum: 5,),
            SizedBox(height: 32.0,),
            CustomButton(),
            SizedBox(height: 16.0,),


          ],
        ),
      ),
    );
  }
}





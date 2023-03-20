
import 'package:flutter/material.dart';
import 'package:todo_tasks_app/views/widgets/custom_app_bar.dart';
import 'package:todo_tasks_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
          children: const[
            SizedBox(
              height: 50.0,
            ),
            CustomAppBar(title: 'Edit Note',
            theIcon: Icons.check,
            ),
            SizedBox(
              height: 50.0,
            ),
            CustomTextField(hintTitle: 'Title' , maxLinesNum: 1,),
            SizedBox(
              height: 16.0,
            ),
            CustomTextField(hintTitle: 'Content' , maxLinesNum: 5,),

          ],
        ),
    );
  }
}

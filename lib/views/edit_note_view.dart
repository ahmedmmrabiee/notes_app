import 'package:flutter/material.dart';
import 'package:todo_tasks_app/models/note_model.dart';
import 'package:todo_tasks_app/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key, required this.noteEdited}) : super(key: key);

  final NoteModel noteEdited;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNoteViewBody(noteEditedBody: noteEdited,),
    );
  }
}

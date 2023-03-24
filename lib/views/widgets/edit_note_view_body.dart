
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_tasks_app/cubits/read_notes_from_hive_cubits/read_notes_cubit.dart';
import 'package:todo_tasks_app/models/note_model.dart';
import 'package:todo_tasks_app/shared/components/custom_app_bar.dart';
import 'package:todo_tasks_app/shared/components/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.noteEditedBody}) : super(key: key);

  final NoteModel noteEditedBody;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
   String? theTitle ;
   String? theContent ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
          children: [
            const SizedBox(
              height: 50.0,
            ),
            CustomAppBar(
              title: 'Edit Note',
            theIcon: Icons.check,
              onPressedFunction: (){
                widget.noteEditedBody.title = theTitle ?? widget.noteEditedBody.title;
                widget.noteEditedBody.content = theContent ?? widget.noteEditedBody.content;
                widget.noteEditedBody.save();
                BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 50.0,
            ),
             CustomTextField(
               hintTitle: widget.noteEditedBody.title ,
              onChangedFunc: (value){
              theTitle = value;
              },
              maxLinesNum: 1,),
            const SizedBox(
              height: 16.0,
            ),
             CustomTextField(hintTitle: widget.noteEditedBody.content ,
              onChangedFunc: (value){
                theContent = value;
              },
              maxLinesNum: 5,),

          ],
        ),
    );
  }
}

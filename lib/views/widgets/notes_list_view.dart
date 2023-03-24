import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_tasks_app/cubits/read_notes_from_hive_cubits/read_notes_cubit.dart';
import 'package:todo_tasks_app/cubits/read_notes_from_hive_cubits/read_notes_state.dart';
import 'package:todo_tasks_app/models/note_model.dart';

import 'custom_note_item.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  final colors = const [
     Colors.orangeAccent,
     Colors.lightGreenAccent,
     Colors.cyan,
     Colors.deepPurpleAccent,
     Colors.pinkAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubit, ReadNotesState>(
      builder: (context, state) {
        List<NoteModel> notesMenu = BlocProvider.of<ReadNotesCubit>(context).dataNote ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            itemCount: notesMenu.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: NoteItem(note: notesMenu[index],),
                );
              }
          ),
        );
      },
    );
  }
}
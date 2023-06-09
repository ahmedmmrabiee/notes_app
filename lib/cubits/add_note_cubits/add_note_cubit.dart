import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_tasks_app/cubits/add_note_cubits/add_note_state.dart';
import 'package:todo_tasks_app/models/note_model.dart';
import 'package:todo_tasks_app/shared/const/constants.dart';

class AddNoteCubit extends Cubit <AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color noteColor = const Color(0xfffee440);
  addNote(NoteModel note ) async {
    note.color = noteColor.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    }catch (error){
      emit(AddNoteFailure(error.toString()));
    }


  }
}
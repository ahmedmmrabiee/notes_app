import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_tasks_app/cubits/add_note_cubits/add_note_state.dart';
import 'package:todo_tasks_app/models/note_model.dart';
import 'package:todo_tasks_app/shared/const/constants.dart';

class AddNoteCubit extends Cubit <AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note ) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccess());
      await notesBox.add(note);
    }catch (error){
      AddNoteFailure(error.toString());
    }


  }
}
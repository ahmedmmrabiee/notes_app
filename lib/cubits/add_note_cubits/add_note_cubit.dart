import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_tasks_app/cubits/add_note_cubits/add_note_state.dart';
import 'package:todo_tasks_app/models/note_model.dart';

class AddNoteCubit extends Cubit <AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note ){

  }
}
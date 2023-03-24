

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:todo_tasks_app/models/note_model.dart';
import '../../shared/const/constants.dart';
import 'read_notes_state.dart';

class ReadNotesCubit extends Cubit <ReadNotesState> {
  ReadNotesCubit() : super(ReadNoteInitial());

  List<NoteModel>? dataNote ;

  fetchAllNotes(){
     var allNotesBox = Hive.box<NoteModel>(kNotesBox);
      dataNote = allNotesBox.values.toList();

      emit(NotesUpdateSuccess());
}
}

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:todo_tasks_app/models/note_model.dart';
import '../../shared/const/constants.dart';
import 'read_notes_state.dart';

class ReadNotesCubit extends Cubit <ReadNotesState> {
  ReadNotesCubit() : super(ReadNoteInitial());
  fetchAllNotes() async {

      var allNotesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> allNotes = allNotesBox.values.toList();

      emit(ReadNoteSuccess(allNotes));

}
}
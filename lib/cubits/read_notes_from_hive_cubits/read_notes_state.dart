
import '../../models/note_model.dart';

abstract class ReadNotesState {}
class ReadNoteInitial extends ReadNotesState{}

class ReadNoteLoading extends ReadNotesState{}

class ReadNoteSuccess extends ReadNotesState{
   final List<NoteModel> notes ;
   ReadNoteSuccess(this.notes);
}

class ReadNoteFailure extends ReadNotesState{

  final String errMessage;

  ReadNoteFailure(this.errMessage);
}
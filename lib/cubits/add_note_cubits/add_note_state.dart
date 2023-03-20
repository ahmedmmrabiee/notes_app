// part of 'add_note_cubit.dart ';

import 'package:flutter/cupertino.dart';

  @immutable
  abstract class AddNoteState {}
  class AddNoteInitial extends AddNoteState{}

  class AddNoteLoading extends AddNoteState{}

  class AddNoteSuccess extends AddNoteState{}

  class AddNoteFailure extends AddNoteState{

  final String errMessage;

  AddNoteFailure(this.errMessage);
}
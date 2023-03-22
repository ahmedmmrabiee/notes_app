import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:todo_tasks_app/models/note_model.dart';
import 'package:todo_tasks_app/shared/bloc_observer/simple_bloc_observer.dart';
import 'package:todo_tasks_app/shared/const/constants.dart';
import 'package:todo_tasks_app/views/notes_view.dart';

void main() async {

  await Hive.initFlutter();
  Bloc.observer = const SimpleBlocObserver();

  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp( const NotesApp());

}

class NotesApp extends StatelessWidget {
  const NotesApp ({Key? key}) : super(key: key);
  // This widget is the root of your application.

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      fontFamily:'Poppins',
      ),

      home: const NotesView(),
    );
  }
}




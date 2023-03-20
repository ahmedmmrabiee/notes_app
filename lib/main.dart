import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_tasks_app/cubits/add_note_cubits/add_note_cubit.dart';
import 'package:todo_tasks_app/models/note_model.dart';
import 'package:todo_tasks_app/shared/const/constants.dart';
import 'package:todo_tasks_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp( const NotesApp());

}

class NotesApp extends StatelessWidget {
  const NotesApp ({Key? key}) : super(key: key);
  // This widget is the root of your application.

  @override

  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
        fontFamily:'Poppins',
        ),

        home: const NotesView(),
      ),
    );
  }
}




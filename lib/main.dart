import 'package:flutter/material.dart';
import 'package:todo_tasks_app/views/notes_view.dart';

void main() {
  runApp( const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp ({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const NotesView(),
    );
  }
}




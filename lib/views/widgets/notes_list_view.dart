import 'package:flutter/material.dart';

import 'custom_note_item.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  final colors = const [
     Colors.orangeAccent,
     Colors.lightGreenAccent,
     Colors.cyan,
     Colors.deepPurpleAccent,
     Colors.pinkAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index ){
      return const Padding(
        padding:  EdgeInsets.symmetric(vertical: 4.0),
        child:  NoteItem(),
      );

    }
    );
  }
}
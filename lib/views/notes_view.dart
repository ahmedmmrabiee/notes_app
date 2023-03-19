import 'package:flutter/material.dart';
import 'package:todo_tasks_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        print('pressed on action floating');
      },
      child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}


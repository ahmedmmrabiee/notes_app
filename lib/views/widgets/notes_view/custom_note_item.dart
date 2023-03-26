import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_tasks_app/cubits/read_notes_from_hive_cubits/read_notes_cubit.dart';
import 'package:todo_tasks_app/models/note_model.dart';
import 'package:todo_tasks_app/views/edit_note_view.dart';
class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.note}) : super(key: key);


  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView(
            noteEdited: note,
          );
        }),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0, bottom: 24.0,),
        decoration: BoxDecoration(
         // color: Color(note.color),
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16.0),

        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                contentPadding: const EdgeInsets.all(0.0),
                title:  Text(
                  note.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 26.0,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0,),
                  child: Text(
                    note.content,
                    style: TextStyle(
                      color: Colors.black.withOpacity(.5),
                      fontSize: 18.0,
                    ),
                  ),
                ),
                trailing:  IconButton(onPressed: () {
                  note.delete();
                  BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 28.0,),)
            ),
            Text(
              note.date,
              style: TextStyle(
                color: Colors.black.withOpacity(.5),
                fontSize: 16.0,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

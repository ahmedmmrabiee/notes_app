
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_tasks_app/cubits/read_notes_from_hive_cubits/read_notes_cubit.dart';
import 'package:todo_tasks_app/shared/components/custom_app_bar.dart';
import 'package:todo_tasks_app/views/widgets/notes_list_view.dart';


class NotesViewBody extends StatefulWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState(){
    BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(title: 'Notes',
          theIcon: Icons.search,),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}




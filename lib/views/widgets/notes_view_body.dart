import 'package:flutter/material.dart';
import 'package:todo_tasks_app/views/widgets/custom_app_bar.dart';
class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          SizedBox(
            height: 50,
          ),
          NoteItem(),
        ],
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0, bottom: 24.0,),
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(16.0),

      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          ListTile(
            contentPadding: EdgeInsets.all(0.0),
            title: Text(
              'Flutter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16.0,),
              child: Text(
                'Build your career with ahmed rabie',
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 18.0,
                ),
              ),
            ),
            trailing:  IconButton(onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 28.0,),)
          ),
            Text(
                'Mar20, 2023',
            style: TextStyle(
              color: Colors.black.withOpacity(.5),
              fontSize: 16.0,
            ),
            ),

        ],
      ),
    );
  }
}


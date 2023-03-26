import 'package:flutter/material.dart';
import 'package:todo_tasks_app/models/note_model.dart';
import 'package:todo_tasks_app/shared/const/constants.dart';
import '../../../shared/components/color_item.dart';



class EditNoteColorsListView extends StatefulWidget {
  const EditNoteColorsListView({Key? key, required this.theNote,}) : super(key: key);

  final NoteModel theNote;
  @override
  State<EditNoteColorsListView> createState() => _EditNoteColorsListViewState();
}

class _EditNoteColorsListViewState extends State<EditNoteColorsListView> {
  late int currentIndex ;
  @override
  void initState() {
    currentIndex = colorsList.indexOf(Color(widget.theNote.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: ListView.builder(
          itemCount: colorsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return  Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 4.0),
              child:  GestureDetector(
                onTap: (){
                  currentIndex = index;
                  widget.theNote.color = colorsList[index].value;
                  // BlocProvider.of<AddNoteCubit>(context).noteColor = colorsList[index];

                  setState(() {});
                },
                child: ColorItem(
                  theColor: colorsList[index],
                  isSelectedColor: currentIndex == index,
                ),
              ),

            );

          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:todo_tasks_app/cubits/add_note_cubits/add_note_cubit.dart';
import 'package:todo_tasks_app/cubits/add_note_cubits/add_note_state.dart';
import 'package:todo_tasks_app/models/note_model.dart';


import '../../../shared/components/custom_button.dart';
import '../../../shared/components/custom_text_field.dart';
import 'colors_list_view.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formKey = GlobalKey() ;

  String? title, content;
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children:  [
          const SizedBox(height: 16.0,),
          CustomTextField(
            hintTitle: 'Title',
            onSaved: (value){
              title = value;
            },),
          const SizedBox(height: 16.0,),
          CustomTextField(
            hintTitle: 'Content',
            maxLinesNum: 5,
            onSaved: (value){
              content = value;
            },),
          const SizedBox(height: 8.0,),
          const ColorsListView(),
          const SizedBox(height: 8.0,),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context , state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTapButton: (){
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var dateFormatted = DateFormat.yMEd().format(currentDate);
                    var adddingNote = NoteModel(
                        title: title!,
                        content: content!,
                        date: dateFormatted,
                         color: Colors.orangeAccent.value );
                    BlocProvider.of<AddNoteCubit>(context).addNote(adddingNote);
                  }else{
                    autoValidateMode = AutovalidateMode.always;
                  }
                },
              );
            }

          ),
          const SizedBox(height: 24.0,),


        ],
      ),
    );
  }
}


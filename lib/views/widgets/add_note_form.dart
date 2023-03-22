
import 'package:flutter/cupertino.dart';


import '../../shared/components/custom_button.dart';
import '../../shared/components/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey() ;

  String? title, content;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
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
          const SizedBox(height: 32.0,),
          CustomButton(onTapButton: (){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            }else{
              autovalidateMode = AutovalidateMode.always;
              setState(() {

              });
            }
          },
          ),
          const SizedBox(height: 16.0,),


        ],
      ),
    );
  }
}
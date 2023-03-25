
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_tasks_app/cubits/add_note_cubits/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isSelectedColor, required this.theColor}) : super(key: key);

  final bool isSelectedColor;
  final Color theColor;
  @override
  Widget build(BuildContext context) {
    return isSelectedColor ?  CircleAvatar(
      backgroundColor: Colors.white,
      radius: 28.0,
      child:  CircleAvatar(
        backgroundColor: theColor,
        radius: 24.0,
      ),
    ) :  CircleAvatar(
      backgroundColor: theColor,
      radius: 24.0,
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({Key? key,}) : super(key: key);

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const[

    Color(0xfffee440),
    Color(0xffe76f51),
    Color(0xffe9c46a),
    Color(0xffffafcc),
    Color(0xff2a9d8f),
    Color(0xfffb8500),
    Color(0xff3a5a40),
    Color(0xffd00000),
    Color(0xff3a86ff),
    Color(0xff15616d),

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return  Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 4.0),
              child:  GestureDetector(
                onTap: (){
                  currentIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).noteColor = colors[index];
                  setState(() {});
                },
                child: ColorItem(
                  theColor: colors[index],
                isSelectedColor: currentIndex == index,
                ),
              ),

            );

          }),
    );
  }
}

import 'package:flutter/material.dart';

import '../const/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onTapButton,  this.isLoading = false}) : super(key: key);

  final void Function()? onTapButton;
   final bool isLoading ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapButton,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child:  Center(
          child: isLoading ? const SizedBox(
            height: 24,
            width: 24,
            child:  CircularProgressIndicator(
              color: Colors.black,
            ),
          ) : const Text (

            'Add',
            style: TextStyle(color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),

          ),
        ),
      ),
    );
  }
}
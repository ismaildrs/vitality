import 'package:flutter/material.dart';
import 'package:medgpt/Home/utils/constants.dart';

class UserInputField extends StatelessWidget {
  const UserInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final widthOfDevice = MediaQuery.of(context).size.width;
    final heightOfDevice = MediaQuery.of(context).size.height;
    return SizedBox(
      width: widthOfDevice,
      child:  TextField( 
        decoration: InputDecoration(
          hintText: "What's in your mind?", 
          border: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(10)), borderSide: BorderSide(color: Color(Constants.darkGreyTheme), )),
          ),
    ),);
  }
}
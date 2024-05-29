import 'package:flutter/material.dart';
import 'package:medgpt/screens/Home/Dashboard/view/Widgets/UpperPart/upper_part_widgets/FirstPart.dart';
import 'package:medgpt/screens/Home/Dashboard/view/Widgets/UpperPart/upper_part_widgets/SecondPart.dart';
import 'package:medgpt/screens/Home/Dashboard/view/Widgets/UpperPart/upper_part_widgets/ThirdPart.dart';
import 'package:medgpt/utils/constants.dart';

class UpperPart extends StatelessWidget {
  const UpperPart({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(154, 0, 0, 0),
                  offset: Offset.fromDirection(-1),
                  blurRadius: 15)
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
              colors: [
                Color(Constants.darkBlueTheme),
                Colors.cyan,
              ],
            ),
            color: Color(Constants.darkGreyTheme),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        height: height * 0.48,
        child: const SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [FirstPart(), SecondPart(), ThirdPart()],
          ),
        ));
  }
}

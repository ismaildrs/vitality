import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medgpt/utils/constants.dart';

class SecondPart extends StatelessWidget {
  const SecondPart({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(Constants.padding),
      child: Text(
        "How Are You Feeling Today?",
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: width * 0.11,
            color: Colors.white),
      ),
    );
  }
}

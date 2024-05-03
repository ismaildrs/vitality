import 'package:flutter/material.dart';
import 'package:medgpt/Home/utils/constants.dart';

class BotMessage extends StatelessWidget {
  final String message;
  final String formattedDate;
  BotMessage({super.key, required this.message, required this.formattedDate});

  @override
  Widget build(BuildContext context) {
    final widthOfDevice = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: widthOfDevice*0.02, right: widthOfDevice*0.10, top: 5),
        child: Container(
          decoration: BoxDecoration(color: Color(Constants.lightGreyTheme), borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              Text(message, style: const TextStyle(fontSize: 17),),
              Text(formattedDate, textAlign: TextAlign.right, style: TextStyle(fontSize: 10)),
             ],),
          ),
        ),
      ),
    );
  }
}
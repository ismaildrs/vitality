import 'package:flutter/material.dart';
import 'package:medgpt/utils/constants.dart';

class UserMessage extends StatelessWidget {
  final String message;
  final String formattedDate;
  UserMessage({super.key, required this.message, required this.formattedDate});

  @override
  Widget build(BuildContext context) {
    final widthOfDevice = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
            right: widthOfDevice * 0.02, left: widthOfDevice * 0.2, top: 5),
        child: Container(
          decoration: BoxDecoration(
              color: Color(Constants.lightBlueTheme),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  message,
                  style: TextStyle(fontSize: 17),
                ),
                Text(formattedDate,
                    textAlign: TextAlign.right, style: TextStyle(fontSize: 10)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

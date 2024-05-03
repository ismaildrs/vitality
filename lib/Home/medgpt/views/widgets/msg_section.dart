import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medgpt/Home/medgpt/views/widgets/message_widget/bot_message.dart';
import 'package:medgpt/Home/medgpt/views/widgets/message_widget/user_message.dart';

class MessageSection extends StatelessWidget {
  MessageSection({super.key});
  final String formattedDate = DateFormat('kk:mm').format(DateTime.now());


  @override
  Widget build(BuildContext context) {
    final widthOfDevice = MediaQuery.of(context).size.width;
    return Expanded(
      child: SingleChildScrollView(
        child: SizedBox(
          width: widthOfDevice,
          child: Column(
            children: [
              ],
            ),
          ),
      ),
    );
  }
}
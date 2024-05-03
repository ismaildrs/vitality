import 'package:flutter/material.dart';
import 'package:medgpt/Home/medgpt/views/widgets/input_field.dart';
import 'package:medgpt/Home/medgpt/views/widgets/medgpt_bar.dart';
import 'package:medgpt/Home/medgpt/views/widgets/msg_section.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child:  Column(children: [
          const MedGptBar(),
          MessageSection(),
          UserInputField(),
          const SizedBox(height: 50,)
        ],),
      ),
    );
  }
}
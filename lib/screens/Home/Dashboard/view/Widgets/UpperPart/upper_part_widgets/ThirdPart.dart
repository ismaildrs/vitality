import 'package:flutter/material.dart';
import 'package:medgpt/screens/Home/Dashboard/view/Widgets/UpperPart/upper_part_widgets/ButtonShape.dart';

class ThirdPart extends StatelessWidget {
  const ThirdPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonShape(
            path: "/chatbot", icon: Icons.question_answer, texte: "Chatbot"),
        ButtonShape(
            path: "/checkup",
            icon: Icons.monitor_heart_rounded,
            texte: "Checkup")
      ],
    );
  }
}

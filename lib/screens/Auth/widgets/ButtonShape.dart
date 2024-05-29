import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medgpt/utils/constants.dart';

class ButtonShape extends StatelessWidget {
  final String texte;
  const ButtonShape({super.key, required this.texte});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: Color(Constants.darkBlueTheme),
          borderRadius: BorderRadius.circular(Constants.borderRadius)),
      child: Center(
        child: Text(
          texte,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medgpt/utils/constants.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData? icon;
  final TextInputType? textInputType;
  final bool obscureText;
  const InputField(
      {super.key,
      required this.controller,
      required this.label,
      this.icon,
      this.textInputType,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Constants.padding),
      child: TextFormField(
        keyboardType: textInputType,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            suffixIcon: Icon(
              icon,
              color: Color(Constants.darkTheme),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
            label: Text(label)),
      ),
    );
  }
}

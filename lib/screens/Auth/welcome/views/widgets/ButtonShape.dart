import 'package:flutter/material.dart';
import 'package:medgpt/utils/constants.dart';

class ButtonShape extends StatelessWidget {
  final int bgColor, color;
  final String texte;
  const ButtonShape(
      {super.key,
      required this.texte,
      this.bgColor = 0xffffffff,
      this.color = 0xff000000});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 5),
          color: Color(Constants.lightGreyTheme),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: [
            Text(
              texte,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 4,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Color(bgColor),
                  borderRadius: BorderRadius.circular(15)),
              child: Icon(
                Icons.arrow_outward,
                color: Color(color),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

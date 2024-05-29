import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:medgpt/utils/constants.dart';

class ButtonShape extends StatelessWidget {
  final String path;
  final IconData icon;
  final String texte;
  const ButtonShape(
      {super.key, required this.path, required this.icon, required this.texte});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Get.toNamed(path);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(Constants.lightGreyTheme),
            border: Border.all(color: Colors.white, width: 3),
            borderRadius: BorderRadius.circular(50)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 15),
          child: Row(
            children: [
              Text(
                texte,
                style: TextStyle(
                    fontSize: width * 0.06, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 4,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: EdgeInsets.all(3),
                  child: Icon(
                    icon,
                    size: width * 0.07,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

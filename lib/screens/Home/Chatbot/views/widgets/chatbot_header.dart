import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medgpt/utils/constants.dart';

class ChatbotHeader extends StatelessWidget {
  const ChatbotHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final heightOfDevice = MediaQuery.of(context).size.height;
    final widthOfDevice = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            colors: [
              Color(Constants.darkBlueTheme),
              Colors.cyan,
            ],
          ),
          color: Color(Constants.darkGreyTheme),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      height: heightOfDevice * 0.15,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            width: widthOfDevice * 0.05,
          ),
          InkWell(
              onTap: () => Get.back(),
              child: const Icon(Icons.arrow_back, color: Colors.white)),
          SizedBox(
            width: widthOfDevice * 0.28,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: heightOfDevice * 0.07,
                height: heightOfDevice * 0.07,
                decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage("")),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
              ),
              const Text(
                "AI chatbot",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}

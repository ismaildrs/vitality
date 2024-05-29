import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medgpt/screens/Home/Chatbot/controllers/chatController.dart';
import 'package:medgpt/utils/constants.dart';

class UserInputField extends StatelessWidget {
  UserInputField({super.key});
  final TextEditingController userInputController = TextEditingController();
  final ChatController chatController = Get.find<ChatController>();

  @override
  Widget build(BuildContext context) {
    final widthOfDevice = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: widthOfDevice * 0.8,
            child: TextField(
              controller: userInputController,
              decoration: InputDecoration(
                hintText: "What's in your mind?",
                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(
                        strokeAlign: BorderSide.strokeAlignOutside,
                        width: 2.0,
                        color: Color(Constants.lightGreyTheme))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(
                        strokeAlign: BorderSide.strokeAlignOutside,
                        width: 2.0,
                        color: Color(Constants.lightBlueTheme))),
              ),
            ),
          ),
          SizedBox(
            width: widthOfDevice * 0.01,
          ),
          Obx(
            () => (!chatController.loading.value)
                ? InkWell(
                    onTap: () {
                      if (userInputController.text.isNotEmpty) {
                        chatController.sendMessage(userInputController.text);
                        userInputController.text = "";
                      }
                    },
                    child: Container(
                      width: widthOfDevice * 0.17,
                      height: widthOfDevice * 0.17,
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
                          color: Color(Constants.lightBlueTheme),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  )
                : Container(
                    width: widthOfDevice * 0.17,
                    height: widthOfDevice * 0.17,
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
                        color: Color(Constants.lightBlueTheme),
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(
                      Icons.pause,
                      color: Colors.white,
                    ),
                  ),
          )
        ],
      ),
    );
  }
}

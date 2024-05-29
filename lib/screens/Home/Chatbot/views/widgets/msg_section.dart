import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medgpt/screens/Home/Chatbot/controllers/chatController.dart';
import 'package:medgpt/screens/Home/chatbot/views/widgets/message_widget/bot_message.dart';
import 'package:medgpt/screens/Home/chatbot/views/widgets/message_widget/user_message.dart';

class MessageSection extends StatelessWidget {
  MessageSection({Key? key}) : super(key: key);

  final ChatController chatController = Get.find<ChatController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Expanded(
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black,
                Colors.black,
                Colors.transparent,
              ],
              stops: [0.0, 0.02, 0.98, 1.0],
            ).createShader(bounds);
          },
          blendMode: BlendMode.dstIn,
          child: ListView.builder(
            itemCount: chatController.conversation.length,
            itemBuilder: (context, index) {
              final message = chatController.conversation[index];
              return message.user
                  ? UserMessage(
                      message: message.message,
                      formattedDate: message.date,
                    )
                  : BotMessage(
                      message: message.message,
                      formattedDate: message.date,
                    );
            },
          ),
        ),
      );
    });
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:medgpt/screens/Auth/welcome/views/widgets/ButtonShape.dart';
import 'package:medgpt/utils/constants.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double widthOfDevice = MediaQuery.of(context).size.width;
    final double heightOfDevice = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: widthOfDevice,
        height: heightOfDevice,
        decoration: BoxDecoration(color: Color(Constants.blueTheme)),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Expanded(
                child: SizedBox(
                  height: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 10),
                child: Text(
                  "Transforming\nHealthcare",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: widthOfDevice * 0.1),
                ),
              ),
              SizedBox(
                height: heightOfDevice * 0.05,
              ),
              Stack(
                children: [
                  Positioned(
                    left: widthOfDevice * 0.15,
                    top: heightOfDevice * 0.08,
                    child: Container(
                      width: widthOfDevice * 0.7,
                      height: widthOfDevice * 0.7,
                      decoration: BoxDecoration(
                          color: Color(Constants.darkBlueTheme),
                          borderRadius: BorderRadius.circular(widthOfDevice)),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      width: widthOfDevice,
                      height: widthOfDevice,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/heart.png")),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: heightOfDevice * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Get.offNamed("/signin"),
                    child: const ButtonShape(texte: "Sign In"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                      onTap: () => Get.offNamed("/signup"),
                      child: ButtonShape(
                        texte: "Sign up",
                        bgColor: Constants.blueTheme,
                        color: 0xffffffff,
                      ))
                ],
              ),
              SizedBox(
                height: heightOfDevice * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

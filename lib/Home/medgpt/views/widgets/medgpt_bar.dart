import 'package:flutter/material.dart';
import 'package:medgpt/Home/utils/constants.dart';

class MedGptBar extends StatelessWidget {
  const MedGptBar({super.key});

  @override
  Widget build(BuildContext context) {
    final heightOfDevice = MediaQuery.of(context).size.height;
    final widthOfDevice = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(color: Color(Constants.darkGreyTheme), borderRadius: const BorderRadius.all(Radius.circular(25))),
      height: heightOfDevice*0.15,
      width: double.infinity,
      child:  Row(
        children: [
        SizedBox(width: widthOfDevice*0.05,),
        const Icon(Icons.arrow_back),
        SizedBox(width: widthOfDevice*0.28,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: heightOfDevice * 0.07, height: heightOfDevice * 0.07, decoration: BoxDecoration(image: const DecorationImage(image: AssetImage("")), color: Colors.white, borderRadius: BorderRadius.circular(30)),),
            const Text("MedGPT", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
          ],
        )
      ],),
    );
  }
}
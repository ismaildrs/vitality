import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medgpt/models/UserData.dart';
import 'package:medgpt/utils/constants.dart';

class FirstPart extends StatelessWidget {
  const FirstPart({super.key});

  @override
  Widget build(BuildContext context) {
    UserModel user = UserModel();
    String? name = user.fullName ?? "";
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(Constants.padding),
      child: SizedBox(
        child: Row(
          children: [
            Container(
              width: width * 0.17,
              height: width * 0.17,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello",
                  style: TextStyle(fontSize: width * 0.05, color: Colors.white),
                ),
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.06,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Icon(
                Icons.notifications,
                size: width * 0.12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

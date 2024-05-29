import 'package:flutter/material.dart';
import 'package:medgpt/models/UserData.dart';
import 'package:medgpt/screens/Home/Dashboard/view/Widgets/UpperPart/UpperPart.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}); // Fix constructor declaration

  @override
  Widget build(BuildContext context) {
    UserModel user = UserModel();
    return Scaffold(
      body: FutureBuilder(
        future: user.getUserInfos(),
        builder: (context, AsyncSnapshot<void> snapshot) {
          // Change AsyncSnapshot<void> to match the type of future
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child:
                    CircularProgressIndicator()); // Wrap CircularProgressIndicator with Center widget
          } else {
            return Column(
              children: [UpperPart()],
            );
          }
        },
      ),
    );
  }
}

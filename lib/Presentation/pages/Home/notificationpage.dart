import 'package:finwise_testing_project/Common/uihelper.dart';
import 'package:finwise_testing_project/Presentation/pages/finalpages.dart';
import 'package:flutter/material.dart';

class Notificationpage extends StatelessWidget {
  const Notificationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00D09E),
      body: Stack(
        children: [
          // Centered "Notification" Text at Top
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Center(
              child: Uihelper.customText(
                text: "Notification",
                color: Color(0xFF093030),
                fontsize: 25,
                fontweight: FontWeight.bold,
              ),
            ),
          ),

          // Left and Right Icons (Back & Notification)
          Positioned(
            top: 100,
            left: 30,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Finalpages()),
                );
              },
              child: Uihelper.customImage(img: "bring back.png"),
            ),
          ),
          Positioned(
            top: 100,
            right: 30,
            child: Uihelper.customImage(img: "Icon-Notification.png"),
          ),

          // Bottom White Container
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: const BoxDecoration(
                color: Color(0xFFF1FFF3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

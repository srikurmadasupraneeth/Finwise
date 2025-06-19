import 'package:finwise_testing_project/Common/uihelper.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00D09E),
      body: Stack(
        children: [
          Positioned(
            left: 120,
            top: 100,
            child: Uihelper.customText(
              text: "Hi, Welcome Back",
              color: Color(0xFF052224),
              fontsize: 20,
              fontweight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

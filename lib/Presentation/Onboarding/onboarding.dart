import 'package:flutter/material.dart';
import 'package:finwise_testing_project/Common/uihelper.dart';
import 'package:finwise_testing_project/presentation/Onboarding/onboarding2.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00D09E),
      body: Stack(
        children: [
          Positioned(
            left: 75,
            top: 200,
            child: Column(
              children: [
                Uihelper.customText(
                  text: 'Welcome to',
                  color: const Color(0xFF0E3E3E),
                  fontweight: FontWeight.bold,
                  fontsize: 30,
                ),
                Uihelper.customText(
                  text: 'Expense Manager',
                  color: const Color(0xFF0E3E3E),
                  fontweight: FontWeight.bold,
                  fontsize: 30,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: const BoxDecoration(
                color: Color(0xFFF1FFF3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Uihelper.customImage(img: "Ellipse 185.png"),
                      Uihelper.customImage(img: "preview 1.png"),
                    ],
                  ),
                  const SizedBox(height: 40),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Onboarding2(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Uihelper.customText(
                          text: 'Next',
                          color: const Color(0xFF0E3E3E),
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                        ),
                        const SizedBox(height: 10),
                        Uihelper.customImage(img: "next.png"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

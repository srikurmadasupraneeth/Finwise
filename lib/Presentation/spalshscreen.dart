import 'package:finwise_testing_project/Presentation/Onboarding/onboarding_swipe.dart';
import 'package:flutter/material.dart';
import 'package:finwise_testing_project/Common/uihelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingSwipe()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00D09E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.customImage(img: "Vector.png"),
            SizedBox(height: 20),
            Uihelper.customText(
              text: 'FinWise',
              color: Colors.white,
              fontweight: FontWeight.bold,
              fontsize: 52.14,
            ),
          ],
        ),
      ),
    );
  }
}

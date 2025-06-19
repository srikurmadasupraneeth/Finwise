import 'package:flutter/material.dart';
import 'package:finwise_testing_project/Presentation/Onboarding/onboarding.dart';
import 'package:finwise_testing_project/Presentation/Onboarding/onboarding2.dart';

class OnboardingSwipe extends StatelessWidget {
  const OnboardingSwipe({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: const [Onboarding(), Onboarding2()],
      ),
    );
  }
}

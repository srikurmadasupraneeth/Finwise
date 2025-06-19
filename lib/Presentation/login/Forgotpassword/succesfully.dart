import 'package:finwise_testing_project/Common/uihelper.dart';
import 'package:finwise_testing_project/Presentation/login/login.dart';
import 'package:flutter/material.dart';

class Succesfully extends StatefulWidget {
  const Succesfully({super.key});

  @override
  State<Succesfully> createState() => _SuccesfullyState();
}

class _SuccesfullyState extends State<Succesfully> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00D09E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.customImage(img: "Progress.png"),
            const SizedBox(height: 20),
            Uihelper.customText(
              text: "Password Has Been Changed Successfully",
              color: const Color(0xFFDFF7E2),
              fontsize: 15,
              fontweight: FontWeight.w700,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

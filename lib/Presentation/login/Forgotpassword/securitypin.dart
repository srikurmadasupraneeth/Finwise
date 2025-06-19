import 'package:finwise_testing_project/Common/uihelper.dart';
import 'package:finwise_testing_project/Presentation/login/Forgotpassword/newpassword.dart';
import 'package:finwise_testing_project/Presentation/login/createaccount.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Securitypin extends StatelessWidget {
  const Securitypin({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00D09E),
      body: Stack(
        children: [
          Positioned(
            left: 130,
            top: 150,
            child: Uihelper.customText(
              text: "Security Pin",
              color: Color(0xFF093030),
              fontweight: FontWeight.bold,
              fontsize: 30,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.75,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              decoration: BoxDecoration(
                color: Color(0xFFF1FFF3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Uihelper.customText(
                    text: "Enter Security Pin",
                    color: Color(0xFF0E3E3E),
                    fontweight: FontWeight.bold,
                    fontsize: 20,
                  ),
                  const SizedBox(height: 70),
                  Uihelper.customImage(img: "Frame 93.png"),
                  const SizedBox(height: 70),
                  SizedBox(
                    width: 260,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Newpassword(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF00D09E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 8),
                      ),
                      child: Uihelper.customText(
                        text: "Accept",
                        color: Color(0xFF093030),
                        fontweight: FontWeight.bold,
                        fontsize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Don’t have an account?",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                        children: [
                          TextSpan(
                            text: "Sign Up",
                            style: TextStyle(
                              color: Color(0xFF3299FF),
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Createaccount(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
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

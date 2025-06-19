import 'package:finwise_testing_project/Common/uihelper.dart';
import 'package:finwise_testing_project/Presentation/login/Forgotpassword/securitypin.dart';
import 'package:finwise_testing_project/Presentation/login/createaccount.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  final TextEditingController emailController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00D09E),
      body: Stack(
        children: [
          Positioned(
            left: 110,
            top: 150,
            child: Uihelper.customText(
              text: "Forgot Password",
              color: Color(0xFF093030),
              fontweight: FontWeight.bold,
              fontsize: 25,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.customText(
                    text: "Reset Password?",
                    color: Color(0xFF0E3E3E),
                    fontweight: FontWeight.bold,
                    fontsize: 20,
                  ),
                  Uihelper.customText(
                    text:
                        "You can reset your password here, to reset, first enter the email address",
                    color: Color(0xFF0E3E3E),
                    fontweight: FontWeight.normal,
                    fontsize: 15,
                  ),
                  const SizedBox(height: 80),
                  Uihelper.customText(
                    text: "Enter email address",
                    color: Color(0xFF093030),
                    fontweight: FontWeight.bold,
                    fontsize: 15,
                  ),
                  const SizedBox(height: 15),
                  Uihelper.customTextField(
                    hintText: "Example@email.com",
                    controller: emailController,
                    fillColor: Color(0xFFDFF7E2),
                  ),
                  const SizedBox(height: 80),
                  Center(
                    child: SizedBox(
                      width: 260,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Securitypin(),
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
                          text: "Next step",
                          color: Color(0xFF093030),
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 120),
                  Center(
                    child: SizedBox(
                      width: 260,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Createaccount(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFCCCCCC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 8),
                        ),
                        child: Uihelper.customText(
                          text: "Sign Up",
                          color: Color(0xFF0E3E3E),
                          fontweight: FontWeight.bold,
                          fontsize: 16,
                        ),
                      ),
                    ),
                  ),
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

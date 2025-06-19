import 'package:finwise_testing_project/Presentation/login/login.dart';
import 'package:finwise_testing_project/Presentation/pages/finalpages.dart';
import 'package:flutter/material.dart';
import 'package:finwise_testing_project/Common/uihelper.dart';
import 'package:flutter/gestures.dart';

class Createaccount extends StatefulWidget {
  const Createaccount({super.key});

  @override
  State<Createaccount> createState() => _CreateaccountState();
}

class _CreateaccountState extends State<Createaccount> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final dobController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool isPasswordHidden = true;
  bool isConfirmPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00D09E),
      body: Stack(
        children: [
          Positioned(
            left: 100,
            top: 100,
            child: Uihelper.customText(
              text: "Create Account",
              color: const Color(0xFF093030),
              fontweight: FontWeight.w600,
              fontsize: 28,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.82,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              decoration: const BoxDecoration(
                color: Color(0xFFF1FFF3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Uihelper.registrationForm(
                      fullName: fullNameController,
                      email: emailController,
                      phone: phoneController,
                      dob: dobController,
                      password: passwordController,
                      confirmPassword: confirmPasswordController,
                      isPasswordHidden: isPasswordHidden,
                      isConfirmPasswordHidden: isConfirmPasswordHidden,
                      fillColor: const Color(0xFFDDF7E3),
                      onPasswordToggle: () {
                        setState(() {
                          isPasswordHidden = !isPasswordHidden;
                        });
                      },
                      onConfirmPasswordToggle: () {
                        setState(() {
                          isConfirmPasswordHidden = !isConfirmPasswordHidden;
                        });
                      },
                    ),
                    const SizedBox(height: 15),
                    Align(
                      alignment: Alignment.center,
                      child: Uihelper.customText(
                        text:
                            "By continuing, you agree to \nTerms of Use and Privacy Policy.",
                        color: Color(0xFF4B4544),
                        fontsize: 10,
                        fontweight: FontWeight.w400,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Finalpages(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF00D09E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                        child: Uihelper.customText(
                          text: "Sign Up",
                          color: Color(0xFF093030),
                          fontsize: 16,
                          fontweight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                          children: [
                            TextSpan(
                              text: "Log In",
                              style: TextStyle(
                                color: Color(0xFF3299FF),
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Login(),
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
          ),
        ],
      ),
    );
  }
}

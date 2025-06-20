import 'package:finwise_testing_project/Common/uihelper.dart';
import 'package:finwise_testing_project/Presentation/login/Forgotpassword/succesfully.dart';
import 'package:flutter/material.dart';

class Newpassword extends StatefulWidget {
  const Newpassword({super.key});

  @override
  State<Newpassword> createState() => _NewpasswordState();
}

class _NewpasswordState extends State<Newpassword> {
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00D09E),
      body: Stack(
        children: [
          Positioned(
            top: 180,
            left: 120,
            child: Uihelper.customText(
              text: "New Password",
              color: Color(0xFF093030),
              fontsize: 25,
              fontweight: FontWeight.bold,
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
                  const SizedBox(height: 40),
                  Uihelper.customText(
                    text: "New Password",
                    color: Color(0xFF093030),
                    fontweight: FontWeight.normal,
                    fontsize: 12,
                  ),
                  const SizedBox(height: 10),
                  Uihelper.customTextField(
                    hintText: "Enter the New Desired Password",
                    controller: newPasswordController,
                    fillColor: Color(0xFFDFF7E2),
                  ),
                  const SizedBox(height: 40),
                  Uihelper.customText(
                    text: "Confirm New Password",
                    color: Color(0xFF093030),
                    fontweight: FontWeight.normal,
                    fontsize: 12,
                  ),
                  const SizedBox(height: 10),
                  Uihelper.customTextField(
                    hintText: "Confirm It",
                    controller: confirmPasswordController,
                    fillColor: Color(0xFFDFF7E2),
                  ),
                  const SizedBox(height: 90),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Succesfully(),
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
                        text: "Change Password",
                        color: Color(0xFF093030),
                        fontweight: FontWeight.bold,
                        fontsize: 14,
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

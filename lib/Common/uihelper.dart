import 'package:flutter/material.dart';

class Uihelper {
  static Widget customImage({required String img}) {
    return Image.asset('assets/images/$img');
  }

  static Widget customText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontfamily,
    required double fontsize,
    TextAlign textAlign = TextAlign.start,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",
        fontWeight: fontweight,
        color: color,
      ),
    );
  }

  static Widget customTextField({
    required String hintText,
    required TextEditingController controller,
    bool obscureText = false,
    Widget? suffixIcon,
    double borderRadius = 30,
    required Color fillColor,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: fillColor,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide.none,
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }

  static Widget customLabeledTextField({
    required String label,
    required String hintText,
    required TextEditingController controller,
    bool obscureText = false,
    Widget? suffixIcon,
    Color fillColor = const Color(0xFFDDF7E3),
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        customTextField(
          hintText: hintText,
          controller: controller,
          obscureText: obscureText,
          suffixIcon: suffixIcon,
          fillColor: fillColor,
          keyboardType: keyboardType,
        ),
      ],
    );
  }

  static Widget registrationForm({
    required TextEditingController fullName,
    required TextEditingController email,
    required TextEditingController phone,
    required TextEditingController dob,
    required TextEditingController password,
    required TextEditingController confirmPassword,
    required bool isPasswordHidden,
    required bool isConfirmPasswordHidden,
    required VoidCallback onPasswordToggle,
    required VoidCallback onConfirmPasswordToggle,
    required Color fillColor,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customLabeledTextField(
          label: "Full Name",
          hintText: "example@example.com",
          controller: fullName,
          fillColor: fillColor,
        ),

        customLabeledTextField(
          label: "Email",
          hintText: "example@example.com",
          controller: email,
          fillColor: fillColor,
          keyboardType: TextInputType.emailAddress,
        ),

        customLabeledTextField(
          label: "Mobile Number",
          hintText: "+ 123 456 789",
          controller: phone,
          fillColor: fillColor,
          keyboardType: TextInputType.phone,
        ),

        customLabeledTextField(
          label: "Date Of Birth",
          hintText: "DD / MM / YYY",
          controller: dob,
          fillColor: fillColor,
          keyboardType: TextInputType.datetime,
        ),

        customLabeledTextField(
          label: "Password",
          hintText: "********",
          controller: password,
          fillColor: fillColor,
          obscureText: isPasswordHidden,
          suffixIcon: IconButton(
            icon: Icon(
              isPasswordHidden ? Icons.visibility_off : Icons.visibility,
              color: Colors.black45,
            ),
            onPressed: onPasswordToggle,
          ),
        ),

        customLabeledTextField(
          label: "Confirm Password",
          hintText: "********",
          controller: confirmPassword,
          fillColor: fillColor,
          obscureText: isConfirmPasswordHidden,
          suffixIcon: IconButton(
            icon: Icon(
              isConfirmPasswordHidden ? Icons.visibility_off : Icons.visibility,
              color: Colors.black45,
            ),
            onPressed: onConfirmPasswordToggle,
          ),
        ),
      ],
    );
  }
}

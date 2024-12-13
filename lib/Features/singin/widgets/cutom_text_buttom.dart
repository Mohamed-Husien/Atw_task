import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.fontSize = 16,
  });
  final void Function()? onPressed;
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: const Text(
          "Register",
          style: TextStyle(
            color: Color(0xff7A7C91),
          ),
        ));
  }
}

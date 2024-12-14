import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Let's Sing you in.",
          style: TextStyle(
            color: Color(0xff2C385D),
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Welcome back.",
          style: TextStyle(
            color: Color(0xff1B2B51),
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "You'v been missed!",
          style: TextStyle(
            color: Color(0xff1B2B51),
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

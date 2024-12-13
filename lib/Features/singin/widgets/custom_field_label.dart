import 'package:flutter/material.dart';

class CustomFieldLabel extends StatelessWidget {
  const CustomFieldLabel({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xff2C385D),
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

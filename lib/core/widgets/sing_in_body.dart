import 'package:atw_task1_app/core/widgets/header_text.dart';
import 'package:atw_task1_app/core/widgets/text_form_field_and_button_part.dart';
import 'package:flutter/material.dart';

class SingInBody extends StatelessWidget {
  const SingInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 48,
            ),
            HeaderText(
              text1: "Let's Sign you in.",
              text2: "Welcome back.",
              text3: "You'v been missed!",
            ),
            SizedBox(
              height: 24,
            ),
            SingInPart(),
          ],
        ),
      ),
    );
  }
}

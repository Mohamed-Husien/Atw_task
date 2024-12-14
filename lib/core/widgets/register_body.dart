import 'package:atw_task1_app/core/widgets/header_text.dart';
import 'package:atw_task1_app/core/widgets/register_part.dart';
import 'package:flutter/widgets.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

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
              text1: "Let's Sign you up.",
              text2: "Welcome back.",
              text3: "You'v been missed!",
            ),
            SizedBox(
              height: 24,
            ),
            RegisterPart()
          ],
        ),
      ),
    );
  }
}

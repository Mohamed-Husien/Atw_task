import 'package:atw_task1_app/Features/singin/widgets/header_text.dart';
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
            HeaderText()
          ],
        ),
      ),
    );
  }
}

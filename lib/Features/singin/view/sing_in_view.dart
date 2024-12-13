import 'package:atw_task1_app/Features/singin/widgets/sing_in_body.dart';
import 'package:flutter/material.dart';

class SingInView extends StatelessWidget {
  const SingInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      body: SingInBody(),
    );
  }
}

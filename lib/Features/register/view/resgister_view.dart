import 'package:atw_task1_app/core/widgets/register_body.dart';
import 'package:flutter/material.dart';

class ResgisterView extends StatelessWidget {
  const ResgisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      body: RegisterBody(),
    );
  }
}

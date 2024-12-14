import 'package:atw_task1_app/Features/singin/cubits/sing_in_cubit/singin_cubit.dart';
import 'package:atw_task1_app/core/helpers/show_snack_bar_function.dart';
import 'package:atw_task1_app/core/widgets/sing_in_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SingInView extends StatelessWidget {
  const SingInView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    return BlocConsumer<SinginCubit, SinginState>(
      listener: (context, state) {
        if (state is SinginInLoading) {
          isLoading = true;
        } else if (state is SinginInSuccess) {
          showSnachBarFun(context, 'Sing indone successfully');
          isLoading = false;
        } else if (state is SinginInFailure) {
          showSnachBarFun(context, state.erorrMessage);
          isLoading = false;
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: const Scaffold(
            backgroundColor: Color(0xFFF3F3F3),
            body: SingInBody(),
          ),
        );
      },
    );
  }
}

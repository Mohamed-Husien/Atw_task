import 'package:atw_task1_app/Features/register/cubits/cubit/register_cubit.dart';
import 'package:atw_task1_app/Features/signin/cubits/sing_in_cubit/singin_cubit.dart';
import 'package:atw_task1_app/Features/signin/view/sign_in_view.dart';
import 'package:atw_task1_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const SignInApp());
}

class SignInApp extends StatelessWidget {
  const SignInApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegisterCubit(),
        ),
        BlocProvider(
          create: (context) => SignInCubit(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignInView(),
      ),
    );
  }
}

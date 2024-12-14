import 'package:atw_task1_app/Features/register/view/resgister_view.dart';
import 'package:atw_task1_app/Features/singin/cubits/sing_in_cubit/singin_cubit.dart';
import 'package:atw_task1_app/core/helpers/validate_email.dart';
import 'package:atw_task1_app/core/helpers/validate_password.dart';
import 'package:atw_task1_app/core/widgets/custom_field_label.dart';
import 'package:atw_task1_app/core/widgets/custom_sign_in_button.dart';
import 'package:atw_task1_app/core/widgets/custom_text_form_field.dart';
import 'package:atw_task1_app/core/widgets/cutom_text_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingInPart extends StatefulWidget {
  const SingInPart({super.key});

  @override
  State<SingInPart> createState() => _SingInPartState();
}

class _SingInPartState extends State<SingInPart> {
  bool isSecurePassword = true;
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? password, email;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomFieldLabel(
              text: 'Email',
            ),
            CustomTextFormField(
              onChanged: (value) {
                email = value;
              },
              validator: (value) => validateEmail(value),
              hint: 'Your Email',
            ),
            const SizedBox(height: 24),
            //---------------------------------------------
            const CustomFieldLabel(
              text: 'Password',
            ),
            CustomTextFormField(
              onChanged: (value) {
                password = value;
              },
              validator: (value) => validatePassword2(value),
              obscureText: isSecurePassword,
              suffixIcon: toggalePassword(),
              hint: 'Password',
            ),
            //--------------------------------------------
            const SizedBox(height: 84),
            CustomButton(
              width: double.infinity,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  BlocProvider.of<SinginCubit>(context)
                      .loginUser(email: email!, password: password!);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
            ),
            //-------------------------------------------------
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("You don't have an account?"),
                CustomTextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      (MaterialPageRoute(
                        builder: (context) {
                          return const ResgisterView();
                        },
                      )),
                    );
                  },
                  text: "Register",
                ),
                const SizedBox(
                  height: 8,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget toggalePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          isSecurePassword = !isSecurePassword;
        });
      },
      icon: isSecurePassword
          ? const Icon(Icons.visibility_off)
          : const Icon(
              Icons.visibility,
              color: Colors.grey,
            ),
    );
  }
}

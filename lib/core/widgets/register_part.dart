import 'package:atw_task1_app/Features/register/cubits/cubit/register_cubit.dart';
import 'package:atw_task1_app/core/helpers/validate_email.dart';
import 'package:atw_task1_app/core/helpers/validate_password.dart';
import 'package:atw_task1_app/core/widgets/custom_field_label.dart';
import 'package:atw_task1_app/core/widgets/custom_sign_in_button.dart';
import 'package:atw_task1_app/core/widgets/custom_text_form_field.dart';
import 'package:atw_task1_app/core/widgets/cutom_text_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPart extends StatefulWidget {
  const RegisterPart({super.key});

  @override
  State<RegisterPart> createState() => _RegisterPartState();
}

bool isSecurePassword = true;
final GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? password, email;

class _RegisterPartState extends State<RegisterPart> {
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
              text: 'Register',
              width: double.infinity,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  BlocProvider.of<RegisterCubit>(context)
                      .createUserMethod(email: email!, password: password!);
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
                const Text("You already have an account?"),
                CustomTextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  text: "Sing In",
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

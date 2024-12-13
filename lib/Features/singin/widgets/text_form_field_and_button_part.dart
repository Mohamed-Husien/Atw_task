import 'package:atw_task1_app/Features/singin/helpers/validate_email.dart';
import 'package:atw_task1_app/Features/singin/helpers/validate_password.dart';
import 'package:atw_task1_app/Features/singin/widgets/custom_sign_in_button.dart';
import 'package:atw_task1_app/Features/singin/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

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
        right: 24,
        left: 24,
        top: 24,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextFormField(
              onChanged: (value) {
                email = value;
              },
              validator: (value) => validateEmail(value),
              hint: 'Email',
              prefixIcon: const Icon(
                Icons.email,
                color: Color(0xff65656B),
              ),
            ),
            const SizedBox(height: 24),
            //---------------------------------------------
            CustomTextFormField(
              onChanged: (value) {
                password = value;
              },
              validator: (value) => validatePassword2(value),
              obscureText: isSecurePassword,
              suffixIcon: toggalePassword(),
              hint: 'Password',
              prefixIcon: const Icon(
                Icons.key,
                color: Color(0xff65656B),
              ),
            ),
            //--------------------------------------------
            const SizedBox(height: 24),
            CustomButton(
              width: double.infinity,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
            ),
            //-------------------------------------------------
            const SizedBox(height: 24),
            // const Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [

            //     CustomTextButton(text: "Sign Up"),
            //     SizedBox(
            //       height: 8,
            //     )
            //   ],
            // ),
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

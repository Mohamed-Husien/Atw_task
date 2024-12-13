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
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
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
              text: 'Email',
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

class CustomFieldLabel extends StatelessWidget {
  const CustomFieldLabel({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xff2C385D),
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

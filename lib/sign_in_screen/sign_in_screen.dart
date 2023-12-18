import 'package:flutter/material.dart';
import 'package:new_app/constants/colors.dart';
import 'package:new_app/sign_in_screen/widgets/sign_in_form.dart';
import 'package:new_app/sign_in_screen/widgets/welcome_back_avatar.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.hawkesBlue,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
        children: [
          //Create Account text
          WelcomeBackAvatar(),
          // TextFields
          SignInForm(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:new_app/constants/colors.dart';
import 'package:new_app/sign_up_screen/widgets/create_account_avatar.dart';
import 'package:new_app/sign_up_screen/widgets/sign_up_form.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.hawkesBlue,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          //Create Account text
          CreateAccountAvatar(),
          // TextFields
          SignUpForm(),
        ],
      ),
    );
  }
}

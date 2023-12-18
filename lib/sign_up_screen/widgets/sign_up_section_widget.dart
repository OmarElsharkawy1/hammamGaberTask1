import 'package:flutter/material.dart';
import 'package:new_app/constants/colors.dart';
import 'package:new_app/global_widgets/custom_underline_word.dart';
import 'package:new_app/sign_up_screen/widgets/sign_up_arrow.dart';

class SignUpSectionWidget extends StatelessWidget {
  const SignUpSectionWidget({Key? key, this.name, this.email, this.password})
      : super(key: key);

  final String? name;
  final String? email;
  final String? password;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .2,
      child: Stack(
        children: [
          //Circle Avatar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Sign up, Arrow icon
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SignUpArrow(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomUnderlineWord(
                      text: 'Sign Up',
                      color: AppColors.brightCornflowerBlue,
                      function: () {},
                    ),
                    CustomUnderlineWord(
                      text: 'Forgot Passwords',
                      color: AppColors.brightCornflowerBlue,
                      function: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

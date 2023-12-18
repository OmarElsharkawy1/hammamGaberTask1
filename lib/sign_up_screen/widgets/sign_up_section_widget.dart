import 'package:flutter/material.dart';
import 'package:new_app/constants/colors.dart';
import 'package:new_app/global_widgets/custom_underline_word.dart';
import 'package:new_app/global_widgets/arrow_icon.dart';

class SignUpSectionWidget extends StatelessWidget {
  const SignUpSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .3,
      child: Stack(
        children: [
          //Circle Avatar
          const Positioned(
            right: -140,
            bottom: -130,
            child: CircleAvatar(
              backgroundColor: AppColors.tropicalBlue,
              maxRadius: 150,
            ),
          ),
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
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SignUpArrow(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomUnderlineWord(
                      text: 'Sign In',
                      color: AppColors.brightCornflowerBlue,
                      function: () {
                        Navigator.pushNamed(context, '/sign-in');
                      },
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

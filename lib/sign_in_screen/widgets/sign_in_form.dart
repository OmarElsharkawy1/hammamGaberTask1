import 'package:flutter/material.dart';
import 'package:new_app/constants/colors.dart';
import 'package:new_app/global_widgets/custom_underline_word.dart';
import 'package:new_app/global_widgets/text_form_widget.dart';
import 'package:new_app/sign_up_screen/sign_up_controller.dart';
import 'package:new_app/global_widgets/arrow_icon.dart';
import 'package:provider/provider.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SignUpController(),
      child: Consumer<SignUpController>(builder: (_, model, __) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .6,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: TextFormWidget(
                    name: "Your Email",
                    onChanged: (value) {
                      model.email = value;
                    },
                  ),
                ),
                //Password
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: TextFormWidget(
                    name: "Password",
                    onChanged: (value) {
                      model.password = value;
                    },
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sign In',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SignUpArrow(),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomUnderlineWord(
                        text: 'Sign Up',
                        color: AppColors.brightCornflowerBlue,
                        function: () {
                          Navigator.pushReplacementNamed(context, '/');
                        },
                      ),
                      CustomUnderlineWord(
                        text: 'Forgot Passwords',
                        color: AppColors.deepBlush,
                        function: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

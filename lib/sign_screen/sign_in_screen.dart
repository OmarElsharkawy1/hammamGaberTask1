import 'package:flutter/material.dart';
import 'package:new_app/constants/colors.dart';
import 'package:new_app/global_widgets/text_form.dart';
import 'package:new_app/sign_screen/widgets/create_account_widget.dart';
import 'package:new_app/sign_screen/widgets/sign_up_section_widget.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.hawkesBlue,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          //Create Account text
          CreateAccountText(),
          // TextFields
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Column(
              children: [
                //Name
                TextFormWidget(name: 'Name'),
                //Your Email
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: TextFormWidget(name: "Your Email"),
                ),
                //Password
                TextFormWidget(name: "Password"),
              ],
            ),
          ),
          SignUpSectionWidget(),
        ],
      ),
    );
  }
}

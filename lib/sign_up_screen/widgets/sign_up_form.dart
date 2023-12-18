import 'package:flutter/material.dart';
import 'package:new_app/global_widgets/text_form_widget.dart';
import 'package:new_app/sign_up_screen/sign_up_controller.dart';
import 'package:new_app/sign_up_screen/widgets/sign_up_section_widget.dart';
import 'package:provider/provider.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUpController(),
      child: Consumer<SignUpController>(builder: (_, model, __) {
        return Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .33,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Column(
                children: [
                  //Name
                  TextFormWidget(
                    name: 'Name',
                    onChanged: (value) {
                      model.name = value;
                    },
                  ),
                  //Your Email
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
                  TextFormWidget(
                    name: "Password",
                    onChanged: (value) {
                      model.password = value;
                    },
                  ),
                ],
              ),
            ),
            const SignUpSectionWidget(),
          ],
        );
      }),
    );
  }
}

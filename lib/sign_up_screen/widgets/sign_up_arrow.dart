import 'package:flutter/material.dart';
import 'package:new_app/constants/colors.dart';
import 'package:new_app/sign_up_screen/sign_up_controller.dart';
import 'package:provider/provider.dart';

class SignUpArrow extends StatelessWidget {
  const SignUpArrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SignUpController(),
      child: Consumer<SignUpController>(
        builder: (_, model, __) {
          return Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: AppColors.cornflowerBlue,
                borderRadius: BorderRadius.circular(25)),
            child: IconButton(
              onPressed: () {
                print('Name is: ${model.name}');
                print('Email is: ${model.email}');
                print('Password is: ${model.password}');
                // if (model.name == '' ||
                //     model.email == '' ||
                //     model.password == '') {
                //   showDialog(
                //       context: context,
                //       builder: (BuildContext context) =>
                //           _buildPopupDialog(context));
                // } else {
                //   print('Name is: ${model.name}');
                //   print('Email is: ${model.email}');
                //   print('Password is: ${model.password}');
                // }
              },
              icon: const Icon(
                Icons.east,
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}

Widget _buildPopupDialog(BuildContext context) {
  return AlertDialog(
    title: const Text('Error'),
    content: const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("You missed a filed/s"),
      ],
    ),
    actions: <Widget>[
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Close'),
      ),
    ],
  );
}

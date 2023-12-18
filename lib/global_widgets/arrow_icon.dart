import 'package:flutter/material.dart';
import 'package:new_app/constants/colors.dart';

class SignUpArrow extends StatelessWidget {
  const SignUpArrow(
      {Key? key,
      this.name,
      this.email,
      this.password,
      required this.screenName})
      : super(key: key);

  final String? name;
  final String? email;
  final String? password;
  final String screenName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: AppColors.cornflowerBlue,
          borderRadius: BorderRadius.circular(25)),
      child: IconButton(
        onPressed: () {
          if (screenName == 'up') {
            if (name == '' || email == '' || password == '') {
              showDialog(
                  context: context,
                  builder: (BuildContext context) =>
                      _buildPopupDialog(context));
            } else {
              print('Name is: ${name}');
              print('Email is: ${email}');
              print('Password is: ${password}');
              // Navigator.pushNamed(context, '/sign-in');
            }
          } else {
            if (email == '' || password == '') {
              showDialog(
                  context: context,
                  builder: (BuildContext context) =>
                      _buildPopupDialog(context));
            } else {
              print('Email is: ${email}');
              print('Password is: ${password}');
              // Navigator.pushNamed(context, '/sign-in');
            }
          }
        },
        icon: const Icon(
          Icons.east,
          color: Colors.white,
        ),
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

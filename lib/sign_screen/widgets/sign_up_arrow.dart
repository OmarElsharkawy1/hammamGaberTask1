import 'package:flutter/material.dart';
import 'package:new_app/constants/colors.dart';

class SignUpArrow extends StatelessWidget {
  const SignUpArrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: AppColors.cornflowerBlue,
          borderRadius: BorderRadius.circular(25)),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.east,
          color: Colors.white,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:new_app/constants/colors.dart';

class WelcomeBackAvatar extends StatelessWidget {
  const WelcomeBackAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .4,
      child: Stack(
        children: [
          const Positioned(
            left: 230,
            top: -30,
            child: CircleAvatar(
              backgroundColor: AppColors.tropicalBlue,
              maxRadius: 150,
            ),
          ),
          //Circle Avatar
          Positioned(
            right: -60,
            bottom: 60,
            child: CircleAvatar(
              backgroundColor: AppColors.cornflowerBlue.withOpacity(.9),
              maxRadius: 300,
            ),
          ),
          const Positioned(
            left: -100,
            top: -220,
            child: CircleAvatar(
              backgroundColor: AppColors.tropicalBlue,
              maxRadius: 150,
            ),
          ),
          //Create Word
          const Positioned(
            left: 25,
            top: 80,
            child: Text(
              'Welcome',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 48,
              ),
            ),
          ),
          //Account word
          const Positioned(
            left: 25,
            top: 140,
            child: Text(
              'Back',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 48,
              ),
            ),
          ),
          //Back Arrow
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 25),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}

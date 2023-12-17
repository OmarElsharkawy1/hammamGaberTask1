import 'package:flutter/material.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .37,
      child: Stack(
        children: [
          //Circle Avatar
          const Positioned(
            right: -100,
            bottom: 10,
            child: CircleAvatar(backgroundColor: Colors.blue, maxRadius: 400),
          ),
          //Create Word
          const Positioned(
            left: 25,
            top: 80,
            child: Text(
              'Create',
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
              'Account',
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

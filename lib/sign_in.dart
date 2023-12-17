import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 228, 254),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          //Create Account text
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .37,
            child: Stack(
              children: [
                //Circle Avatar
                const Positioned(
                  right: -100,
                  bottom: 10,
                  child: CircleAvatar(
                      backgroundColor: Colors.blue, maxRadius: 400),
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
          ),
          // TextFields
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Column(
              children: [
                //Name
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Name",
                    hintStyle: const TextStyle(color: Colors.black),
                    contentPadding: const EdgeInsets.only(left: 25),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                //Your Email
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Your Email",
                      hintStyle: const TextStyle(color: Colors.black),
                      contentPadding: const EdgeInsets.only(left: 25),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                //Password
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Password",
                    hintStyle: const TextStyle(color: Colors.black),
                    contentPadding: const EdgeInsets.only(left: 25),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .331,
            child: Stack(
              children: [
                //Circle Avatar
                const Positioned(
                  right: -150,
                  bottom: -130,
                  child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 175, 202, 254),
                      maxRadius: 160),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Sign up, Arrow icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 33, 149, 242),
                                borderRadius: BorderRadius.circular(25)),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.east,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.blueAccent,
                                  decorationThickness: 10),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

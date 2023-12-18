import 'package:flutter/material.dart';

import 'calculate_text_size.dart';

class CustomUnderlineWord extends StatelessWidget {
  const CustomUnderlineWord(
      {required this.text,
      required this.color,
      required this.function,
      Key? key})
      : super(key: key);

  final String text;
  final Color color;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 15,
          alignment: Alignment.bottomCenter,
          child: Container(
            width: calculateTextSize(
                  text: text,
                  context: context,
                ).width +
                15,
            height: 5,
            color: color,
          ),
        ),
        TextButton(
          onPressed: function,
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

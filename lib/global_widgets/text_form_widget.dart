import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  const TextFormWidget({Key? key, required this.name, this.onChanged})
      : super(key: key);
  final String name;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Field is required!';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        filled: true,
        hintText: name,
        hintStyle: const TextStyle(color: Colors.black),
        contentPadding: const EdgeInsets.only(left: 25),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

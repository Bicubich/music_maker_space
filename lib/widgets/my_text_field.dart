import 'package:flutter/material.dart';
import 'package:music_maker_space/common.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  const MyTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      controller: controller,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.w500,
          fontFamily: font),
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 4.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
            color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w500),
      ),
    );
  }
}

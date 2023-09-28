import 'package:flutter/material.dart';
import 'package:music_maker_space/common.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Function() onTab;
  final Color? borderColor;
  final Color? fillColor;
  final Icon? icon;
  const MyButton({
    super.key,
    required this.text,
    required this.textColor,
    this.fillColor,
    this.borderColor,
    this.icon,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTab,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: BorderSide(
            color: borderColor ?? Colors.transparent,
            width: borderColor != null ? 1.0 : 0.0,
          ),
        ),
        backgroundColor: fillColor ?? Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                color: textColor,
                fontSize: 17,
                fontWeight: FontWeight.w500,
                fontFamily: font),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: icon ?? Container(),
          )
        ],
      ),
    );
  }
}

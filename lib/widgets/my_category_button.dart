import 'package:flutter/material.dart';
import 'package:music_maker_space/common.dart';

class MyCategoryButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function() onTab;
  const MyCategoryButton({
    super.key,
    required this.text,
    required this.onTab,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTab,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        backgroundColor: isSelected ? Colors.green : Colors.grey,
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: isSelected ? Colors.black : Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w500,
            fontFamily: font),
      ),
    );
  }
}

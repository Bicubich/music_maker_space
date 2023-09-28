import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final Widget child;
  final Color? borderColor, color, shadowColor;
  final double radius;
  final double? elevation;
  final Function()? onClick;

  const CardView({
    Key? key,
    required this.child,
    this.borderColor,
    this.color,
    this.radius = 8,
    this.elevation = 4,
    this.onClick,
    this.shadowColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      shadowColor: shadowColor,
      color: color ?? Colors.black,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: borderColor ?? Colors.black,
        ),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      child: child,
    );
  }
}

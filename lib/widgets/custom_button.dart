import 'package:flutter/material.dart';

import '../theme/colorpalatt.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget? child;
  final Color? backgroundColor;
  final double? width;
  final double? elevation;
  final double? height;
  final double? borderRadius;

  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.backgroundColor,
    required this.width,
    this.elevation,
    required this.height,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: elevation ?? 0,
          backgroundColor:
              backgroundColor ?? Palatt.primary, // Default color is blue
          minimumSize: Size(width!, height!),
          maximumSize: Size(width!, height!),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
          ),
        ),
        onPressed: onPressed,
        child: child);
  }
}

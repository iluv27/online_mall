import 'package:flutter/material.dart';

class YellowButton extends StatelessWidget {
  const YellowButton(
      {super.key,
      required this.label,
      required this.onPressed,
      required this.padding});

  final String label;
  final Function() onPressed;
  final MaterialStateProperty<EdgeInsetsGeometry> padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(const Color(0xFF4D9CB2)),
        padding: padding,
        shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

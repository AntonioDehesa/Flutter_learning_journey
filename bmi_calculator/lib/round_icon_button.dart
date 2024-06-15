import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {super.key, required this.child, required this.onPress});

  final Widget child;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
        shape: const CircleBorder(),
        elevation: 6.0,
        fillColor: const Color(0xFF4C4F5E),
        onPressed: onPress,
        child: child);
  }
}

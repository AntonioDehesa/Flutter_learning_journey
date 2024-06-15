import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.onTap,
    required this.ButtonTittle,
  });

  final VoidCallback onTap;
  final String ButtonTittle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: bottomContainerColor,
        padding: const EdgeInsets.only(bottom: 20.0),
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomContainerHeight,
        child: Text(
          ButtonTittle,
          style: const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

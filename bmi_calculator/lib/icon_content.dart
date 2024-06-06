import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.content, required this.label});

  final IconData content;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            content,
            size: 80.0,
          ),
          const SizedBox(
            height: 15.0,
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 18.0, color: colorBackground),
          )
        ],
      ),
    );
  }
}

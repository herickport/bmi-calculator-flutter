import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;

  const ReusableCard({@required this.cardColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: cardColor,
      ),
      child: cardChild,
    );
  }
}

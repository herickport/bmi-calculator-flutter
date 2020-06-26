import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;
  final void Function() onPress;

  const ReusableCard({@required this.cardColor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: cardColor,
        ),
        child: cardChild,
      ),
    );
  }
}

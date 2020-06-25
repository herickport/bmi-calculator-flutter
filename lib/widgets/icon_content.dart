import 'package:flutter/material.dart';

const TextStyle labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconContent({@required this.icon, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(height: 10.0),
        Text(
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}

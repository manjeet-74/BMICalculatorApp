import 'package:flutter/material.dart';
import 'package:bmi_app/constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    super.key,
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label; //gender

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //contains icon and gender
      children: [
        Icon(icon, size: 60.0), //tapping into the package imported
        SizedBox(
          //to give space between icon and gender
          height: 15.0,
        ),
        Text(
          label,
          style:kLabelTextStyle,
        ),
      ],
    );
  }
}
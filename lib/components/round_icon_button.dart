import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  //creating our own button with desired properties
  const RoundIconButton({super.key, this.icon, this.onPressed});

  final IconData? icon;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 45.0,
        height: 45.0,
      ),
      onPressed: () => onPressed!(),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

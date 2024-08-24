import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
    this.colour, //colour property is required when creating an instance of ReusableCard.
    this.cardChild,// Child widget that will be displayed inside the card
    this.onPress//passing a function
  });
  final colour;
  final Widget? cardChild;
  final Function? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  () => onPress!(),
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour, //gives color to container
          borderRadius: BorderRadius.circular(10.0), //to have rounded edges
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../constants.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton({required this.onTap, required this.buttonTitle});
  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        child: Center(
          child: Text(
            buttonTitle,
            style: kCalculateButtonTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
        height: kBottomContainerHeight,
      ),
    );
  }
}

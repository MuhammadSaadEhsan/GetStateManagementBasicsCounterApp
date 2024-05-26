import 'package:flutter/material.dart';
import 'package:statemgt/utils/color_constraint.dart';

class TextComponent extends StatelessWidget {
  final String textComponentValue;
  const TextComponent({super.key,required this.textComponentValue});

  @override
  Widget build(BuildContext context) {
    return Text(
      textComponentValue,
      style: TextStyle(
        color: ColorContraint.primaryColor,
        fontSize: 33
      ),
    );
  }
}

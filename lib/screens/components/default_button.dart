import 'package:flutter/material.dart';
import 'package:flutter_kurly/constants.dart';
import 'package:flutter_kurly/theme.dart';

class DefaultButton extends StatelessWidget {
  final String? text;
  final GestureTapCallback? press;
  final Color? color;
  const DefaultButton({
    super.key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: const EdgeInsets.all(16),
        ),
        onPressed: press,
        child: Text(text ?? "", style: textTheme().titleMedium));
  }
}

import 'package:flutter/material.dart';

class FormError extends StatelessWidget {
  final List<String>? error;
  const FormError({super.key, this.error});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(
        error?.length ?? 0,
        (index) => Text(
          " * ${error?[index]}",
          style: const TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NumberIndicator extends StatelessWidget {
  final int currentPage;
  final int length;
  final double? width;
  final double? height;
  const NumberIndicator(
      {super.key,
      required this.currentPage,
      required this.length,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          "$currentPage / $length",
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

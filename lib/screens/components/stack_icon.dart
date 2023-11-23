import 'package:flutter/material.dart';
import 'package:flutter_kurly/constants.dart';
import 'package:flutter_svg/svg.dart';

class StackIcon extends StatelessWidget {
  final String? imgPath;
  final GestureTapCallback? onPressed;
  final String? counter;
  const StackIcon({super.key, this.imgPath, this.onPressed, this.counter});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(imgPath ?? "assets/icons/shopping-cart.svg",
              color: Colors.white),
        ),
        Positioned(
          top: 10,
          right: 5,
          child: Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                "$counter",
                style: const TextStyle(fontSize: 10, color: kPrimaryColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

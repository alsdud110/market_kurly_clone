import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TextMenuCard extends StatelessWidget {
  final String? title;
  final String? icon;
  final GestureTapCallback? press;
  final Color? textColor;
  final Color? iconColor;
  const TextMenuCard(
      {super.key,
      this.title,
      this.icon,
      this.press,
      this.textColor,
      this.iconColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.white,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title ?? "",
                style: TextStyle(
                  fontSize: 16,
                  color: textColor,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 26,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    icon ?? "assets/icons/right-arrow.svg",
                    color: iconColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

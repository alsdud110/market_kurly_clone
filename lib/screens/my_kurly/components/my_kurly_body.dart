import 'package:flutter/material.dart';
import 'package:flutter_kurly/models/text_menu.dart';
import 'package:flutter_kurly/screens/components/text_menu_card.dart';
import 'package:flutter_kurly/screens/my_kurly/components/my_kurly_header.dart';

class MyKurlyBody extends StatelessWidget {
  const MyKurlyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyKurlyHeader(),
        _buildPaddingTextMenuCard("비회원 주문 조회", () {}),
        SizedBox(
          height: 330,
          child: ListView.separated(
            physics: const ClampingScrollPhysics(),
            itemCount: textMenuList.length,
            separatorBuilder: (context, index) => const Divider(
              height: 0,
            ),
            itemBuilder: (context, index) => SizedBox(
              height: 55,
              child: TextMenuCard(
                title: textMenuList[index].text,
                icon: textMenuList[index].icon,
                press: () {},
              ),
            ),
          ),
        ),
        _buildPaddingTextMenuCard("컬리 소개", () {}),
      ],
    );
  }

  Padding _buildPaddingTextMenuCard(String text, GestureTapCallback press) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: SizedBox(
        height: 55,
        child: TextMenuCard(
          title: text,
          icon: "assets/icons/right-arrow.svg",
          press: press,
          textColor: Colors.black,
        ),
      ),
    );
  }
}

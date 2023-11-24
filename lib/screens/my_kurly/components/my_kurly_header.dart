import 'package:flutter/material.dart';
import 'package:flutter_kurly/constants.dart';
import 'package:flutter_kurly/screens/signin/signin_screen.dart';
import 'package:flutter_kurly/theme.dart';

class MyKurlyHeader extends StatelessWidget {
  const MyKurlyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 250,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(),
            Text(
              "회원 가입하고\n다양한 혜택을 받아보세요!",
              style: textTheme().displayLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "가입혜택 보기 >",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, SignInScreen.routeName);
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: kPrimaryColor),
                child: const Center(
                  child: Text(
                    "로그인/회원가입",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MainScreens extends StatelessWidget {
  const MainScreens({super.key});

  static String routeName = "/main_screens";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("MainScreen"),
      ),
    );
  }
}

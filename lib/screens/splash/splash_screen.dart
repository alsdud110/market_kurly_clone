import 'package:flutter/material.dart';
import 'package:flutter_kurly/constants.dart';
import 'package:flutter_kurly/screens/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                "Kurly",
                style: GoogleFonts.pacifico(fontSize: 28, color: Colors.white),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: TextButton(
                  child: const Text("Continue"),
                  onPressed: () {
                    _completeSplash(context, const MainScreens());
                  },
                ),
              ))
        ],
      ),
    );
  }

  void _completeSplash(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => widget));
  }
}

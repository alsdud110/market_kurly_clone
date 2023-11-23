import 'package:flutter/material.dart';
import 'package:flutter_kurly/routes.dart';
import 'package:flutter_kurly/screens/splash/splash_screen.dart';
import 'package:flutter_kurly/theme.dart';

void main() {
  runApp(const MarketKurly());
}

class MarketKurly extends StatelessWidget {
  const MarketKurly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Market Kurly',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: route,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_kurly/screens/main_screen.dart';
import 'package:flutter_kurly/screens/signin/signin_screen.dart';
import 'package:flutter_kurly/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  MainScreens.routeName: (context) => const MainScreens(),
  SignInScreen.routeName: (context) => const SignInScreen(),
};

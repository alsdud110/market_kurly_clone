import 'package:flutter/material.dart';
import 'package:flutter_kurly/screens/signin/components/kurly_sign_form.dart';
import 'package:flutter_kurly/theme.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "로그인",
          style: textTheme().titleMedium?.copyWith(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(),
        ),
      ),
      body: const KurlySignForm(),
    );
  }
}

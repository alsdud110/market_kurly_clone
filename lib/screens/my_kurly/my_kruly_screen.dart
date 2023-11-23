import 'package:flutter/material.dart';
import 'package:flutter_kurly/screens/components/custom_action.dart';
import 'package:flutter_kurly/screens/my_kurly/components/my_kurly_body.dart';

class MyKurlyScreen extends StatelessWidget {
  const MyKurlyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text("마이컬리"),
        actions: const [CustomActions()],
      ),
      body: const SingleChildScrollView(
        child: MyKurlyBody(),
      ),
    );
  }
}

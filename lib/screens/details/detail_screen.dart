import 'package:flutter/material.dart';
import 'package:flutter_kurly/models/product_details_arguments.dart';
import 'package:flutter_kurly/screens/components/default_button.dart';
import 'package:flutter_kurly/screens/details/components/body.dart';
import 'package:flutter_kurly/theme.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/Details";
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          arguments.product.title!,
          style: textTheme()
              .titleMedium
              ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Body(
        product: arguments.product,
      ),
      bottomNavigationBar: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: DefaultButton(
            text: "구매하기",
          ),
        ),
      ),
    );
  }
}

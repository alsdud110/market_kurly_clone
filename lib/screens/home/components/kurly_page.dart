import 'package:flutter/material.dart';
import 'package:flutter_kurly/screens/home/components/kurly_banner_item.dart';

class KurlyPage extends StatelessWidget {
  const KurlyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(
          height: 335,
          child: KurlyBannerItem(),
        ),
      ],
    );
  }
}

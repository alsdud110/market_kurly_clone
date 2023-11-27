import 'package:flutter/material.dart';
import 'package:flutter_kurly/models/product.dart';
import 'package:flutter_kurly/screens/components/product_item.dart';
import 'package:flutter_kurly/screens/home/components/kurly_banner_item.dart';
import 'package:flutter_kurly/theme.dart';

class KurlyPage extends StatelessWidget {
  const KurlyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 335,
          child: KurlyBannerItem(),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 16),
          child: Text(
            "이 상품 어때요?",
            style: textTheme().displayLarge,
          ),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productList.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                    width: 150,
                    child: ProductItem(product: productList[index])),
              );
            }),
          ),
        ),
      ],
    );
  }
}

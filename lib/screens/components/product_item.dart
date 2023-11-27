import 'package:flutter/material.dart';
import 'package:flutter_kurly/models/product.dart';
import 'package:flutter_kurly/string_extensions.dart';
import 'package:flutter_kurly/theme.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final bool? lineChange;
  final double? textContainerHeight;
  const ProductItem(
      {super.key,
      required this.product,
      this.lineChange = false,
      this.textContainerHeight = 80});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Image.network(
              product.imageUrl ?? "assets/images/kurly_banner_0.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: textContainerHeight,
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "${product.title} ${lineChange == true ? "\n" : ""}",
                    style: textTheme().titleMedium,
                  ),
                  TextSpan(
                    text: " ${product.discount}% ",
                    style: textTheme().displayMedium?.copyWith(
                          color: Colors.red,
                        ),
                  ),
                  TextSpan(
                    text: discountPrice(
                        product.price ?? 0, product.discount ?? 0),
                    style: textTheme().displayMedium,
                  ),
                  TextSpan(
                    text: "${product.price.toString().numberFormat()}원",
                    style: textTheme().bodyMedium?.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  String discountPrice(int price, int discount) {
    double discountRate = ((100 - discount) / 100);
    int discountPrice = (price * discountRate).toInt();
    String priceString = "${discountPrice.toString().numberFormat()}원";
    return "$priceString ";
  }
}

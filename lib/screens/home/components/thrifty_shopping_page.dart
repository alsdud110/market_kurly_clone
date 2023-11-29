import 'package:flutter/material.dart';
import 'package:flutter_kurly/models/product.dart';
import 'package:flutter_kurly/screens/components/product_item.dart';
import 'package:flutter_kurly/screens/home/components/circle_container.dart';
import 'package:flutter_kurly/screens/home/components/product_filter_button.dart';

class ThriftyShoppingPage extends StatelessWidget {
  const ThriftyShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(
                height: 120,
                child: Image.asset(
                  "assets/images/kurly_banner_1.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 100,
                  child: ProductFilterButton(),
                ),
              ),
            ],
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 30,
              crossAxisSpacing: 8,
              childAspectRatio: 0.6,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Stack(
                  children: [
                    ProductItem(
                      product: productList[index],
                    ),
                    const Positioned(
                      bottom: 90,
                      right: 10,
                      child: CircleContainer(
                        iconPath: "assets/icons/shopping-cart.svg",
                      ),
                    )
                  ],
                );
              },
              childCount: productList.length,
            ),
          ),
        ),
      ],
    );
  }
}

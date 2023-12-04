import 'package:flutter/material.dart';
import 'package:flutter_kurly/models/product.dart';
import 'package:flutter_kurly/screens/recommend/components/card_product_item.dart';
import 'package:flutter_kurly/screens/recommend/components/stack_product_item.dart';

class RecommendScreen extends StatelessWidget {
  const RecommendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("추천"),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text("베이커리 인기 급상승 랭킹"),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productList.length,
              itemBuilder: (context, index) => StackProductItem(
                width: 160,
                item: productList[index],
                number: index + 1,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text("후기가 좋은 상품"),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 360,
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 40),
              scrollDirection: Axis.horizontal,
              itemCount: productList.length,
              itemBuilder: (context, index) => SizedBox(
                width: 320,
                child: CardProductItem(
                  item: productList[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

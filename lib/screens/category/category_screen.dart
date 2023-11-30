import 'package:flutter/material.dart';
import 'package:flutter_kurly/constants.dart';
import 'package:flutter_kurly/models/grid_category_menu.dart';
import 'package:flutter_kurly/models/list_category_menu.dart';
import 'package:flutter_kurly/screens/category/components/extends_icon_text_card.dart';
import 'package:flutter_kurly/screens/category/components/image_text_card.dart';
import 'package:flutter_kurly/screens/components/custom_action.dart';
import 'package:flutter_kurly/screens/components/text_menu_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("카테고리"),
        actions: const [CustomActions()],
        automaticallyImplyLeading: false,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Divider(
              color: Colors.grey[200],
              thickness: 12,
              height: 12,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 55,
              child: TextMenuCard(
                icon: "assets/icons/right-arrow.svg",
                title: "자주 사는 상품",
                textColor: kPrimaryColor,
                iconColor: kPrimaryColor,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(
              color: Colors.grey[200],
              thickness: 12,
              height: 12,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                listCategoryMenuList.length,
                (index) {
                  return ExtendsIconTextCard(
                    item: listCategoryMenuList[index],
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(
              color: Colors.grey[200],
              height: 12,
              thickness: 12,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 40),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                // 4
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 16,
                crossAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ImageTextCard(menu: gridCategoryMenuList[index]);
                },
                childCount: gridCategoryMenuList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

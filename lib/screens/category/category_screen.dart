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
                maxCrossAxisExtent:
                    200.0, // 작아지면 한 줄에 보여주는 위젯 개수가 많아짐, 커지면 반대로 적어지고 (하나씩)
                mainAxisSpacing: 16, // 아래 위젯 줄과의 간격
                crossAxisSpacing: 10, // 옆 위젯과의 간격
                childAspectRatio:
                    1, // 위젯의 비율.. 1을 정사각형, 즉, width/height --> 1보다 작아지면 height 가 커진거고, 1보다 커지면 width자 커지는거임
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

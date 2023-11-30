import 'package:flutter/material.dart';
import 'package:flutter_kurly/constants.dart';
import 'package:flutter_kurly/screens/components/custom_action.dart';
import 'package:flutter_kurly/screens/search/components/default_search_field.dart';
import 'package:flutter_kurly/theme.dart';

class SearchScreen extends StatelessWidget {
  final List searchKeyWord = ["불고기", "닭갈비", "삼겹살", "갈비곰탕", "생새우살"];

  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("검색"),
        actions: const [CustomActions()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const DefaultSearchField(),
            const SizedBox(
              height: 20,
            ),
            Text("인기 검색어", style: textTheme().titleSmall),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              height: 400,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 50,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        searchKeyWord[index],
                        style: const TextStyle(
                          color: kPrimaryColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Colors.grey,
                    height: 0,
                    thickness: 0.5,
                  );
                },
                itemCount: searchKeyWord.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

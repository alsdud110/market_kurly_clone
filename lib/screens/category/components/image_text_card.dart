import 'package:flutter/material.dart';
import 'package:flutter_kurly/models/grid_category_menu.dart';

class ImageTextCard extends StatelessWidget {
  final GridCategoryMenu menu;
  const ImageTextCard({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(menu.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(menu.title),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_kurly/theme.dart';

class ProductFilterButton extends StatefulWidget {
  const ProductFilterButton({super.key});

  @override
  State<ProductFilterButton> createState() => _ProductFilterButtonState();
}

class _ProductFilterButtonState extends State<ProductFilterButton> {
  String _selectedUItem = "신상품순";

  final List _options = ["신상품순", "인기순", "혜택순"];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      padding: EdgeInsets.zero,
      offset: const Offset(0, 45),
      icon: TextButton(
        onPressed: null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              _selectedUItem,
              style: textTheme().bodyMedium?.copyWith(
                    color: Colors.black,
                  ),
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
              size: 15,
            ),
          ],
        ),
      ),
      onSelected: (value) {
        setState(() {
          _selectedUItem = value.toString();
        });
      },
      itemBuilder: (context) {
        return _options
            .map(
              (option) => PopupMenuItem(
                value: option,
                child: Text("$option", style: textTheme().bodyMedium),
              ),
            )
            .toList();
      },
    );
  }
}

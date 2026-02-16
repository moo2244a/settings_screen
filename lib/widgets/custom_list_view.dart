import 'package:flutter/material.dart';
import 'package:settings/data/items.dart';
import 'package:settings/widgets/custom_item_widget.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return CustomItemWidget(item: item);
      },
    );
  }
}

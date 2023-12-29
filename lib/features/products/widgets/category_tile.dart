import 'package:flipkart_clone/features/products/logic/product_providers.dart';
import 'package:flipkart_clone/features/products/logic/selected_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryTile extends ConsumerWidget {
  const CategoryTile({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String selectedCategory = ref.watch(selectedCategoryProvider);

    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        ref.read(productProvider.notifier).getProductByCategory(category);
        ref.read(selectedCategoryProvider.notifier).selectCategory(category);
      },
      child: Chip(
        backgroundColor: selectedCategory == category
            ? Theme.of(context).primaryColor
            : Colors.grey[300],
        onDeleted: selectedCategory == category
            ? () {
                ref.read(productProvider.notifier).refresh();
                
                ref
                    .read(selectedCategoryProvider.notifier)
                    .selectCategory('All');
              }
            : null,
        deleteIconColor: selectedCategory == category
            ? Colors.white
            : Theme.of(context).primaryColor,
        label: Text(
          category,
          style: TextStyle(
            color: selectedCategory == category
                ? Colors.white
                : Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}

import 'package:flipkart_clone/features/products/logic/category_provider.dart';
import 'package:flipkart_clone/features/products/widgets/category_loading.dart';
import 'package:flipkart_clone/features/products/widgets/category_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryList extends ConsumerWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<String>> categories = ref.watch(categoryProvider);
    return categories.when(
      data: (categories) => SizedBox(
        height: 50,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryTile(
              category: categories[index],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 10,
            );
          },
        ),
      ),
      loading: () => const CategoryLoading(),
      error: (error, stackTrace) => const SizedBox.shrink(),
    );
  }
}

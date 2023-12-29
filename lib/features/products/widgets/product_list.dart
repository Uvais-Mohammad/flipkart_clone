import 'package:flipkart_clone/features/products/logic/product_providers.dart';
import 'package:flipkart_clone/features/products/models/product.dart';
import 'package:flipkart_clone/features/products/widgets/product_loading.dart';
import 'package:flipkart_clone/features/products/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductList extends ConsumerWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<Product>> products = ref.watch(productProvider);
    final bool isTablet = MediaQuery.sizeOf(context).width > 600;
    return products.when(
      data: (products) => Expanded(
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isTablet ? 4 : 2,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index) {
                return ProductWidget(
                  product: products[index],
                );
              })),
      //shimmer loading
      loading: () => Expanded(
        child: GridView.builder(
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
            ),
            itemBuilder: (context, index) {
              return const ProductLoading();
            }),
      ),
      error: (error, stackTrace) => Center(
        child: Text(error.toString()),
      ),
    );
  }
}

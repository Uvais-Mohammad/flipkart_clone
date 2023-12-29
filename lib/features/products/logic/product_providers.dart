import 'dart:async';

import 'package:flipkart_clone/features/products/models/product.dart';
import 'package:flipkart_clone/features/products/repositories/product_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productProvider =
    AutoDisposeAsyncNotifierProvider<ProductProvider, List<Product>>(
        () => ProductProvider());

class ProductProvider extends AutoDisposeAsyncNotifier<List<Product>> {
  @override
  FutureOr<List<Product>> build() async =>
      ref.read(productRepositoryProvider).getProducts();

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = AsyncValue.data(
        await ref.read(productRepositoryProvider).getProducts());
  }

  Future<void> getProductByCategory(String category) async {
    state = const AsyncValue.loading();
    final products = await ref
        .read(productRepositoryProvider)
        .getProductsByCategory(category);
    state = AsyncValue.data(products);
  }
}

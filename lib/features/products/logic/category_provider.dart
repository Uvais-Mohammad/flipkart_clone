import 'dart:async';

import 'package:flipkart_clone/features/products/repositories/product_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryProvider =
    AutoDisposeAsyncNotifierProvider<CategoryProvider, List<String>>(
        () => CategoryProvider());

class CategoryProvider extends AutoDisposeAsyncNotifier<List<String>> {
  @override
  FutureOr<List<String>> build() async =>
      ref.read(productRepositoryProvider).getCategories();

  Future<void> refresh() async =>
      ref.read(productRepositoryProvider).getCategories();
}

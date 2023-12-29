import 'package:flipkart_clone/features/products/models/product.dart';
import 'package:flipkart_clone/features/products/repositories/i_product_repo.dart';
import 'package:flipkart_clone/shared/services/rest_client/i_rest_client.dart';
import 'package:flipkart_clone/shared/services/rest_client/rest_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productRepositoryProvider = Provider<IProductRepository>((ref) {
  return ProductRepository(restClient: ref.read(restClientProvider));
});

final class ProductRepository implements IProductRepository {
  final IRestClient _restClient;

  ProductRepository({required IRestClient restClient})
      : _restClient = restClient;
  @override
  Future<List<Product>> getProducts() {}
}

import 'package:flipkart_clone/features/products/models/product.dart';

abstract interface class IProductRepository {
  Future<List<Product>> getProducts();
}

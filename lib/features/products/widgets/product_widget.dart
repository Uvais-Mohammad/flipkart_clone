import 'package:cached_network_image/cached_network_image.dart';
import 'package:flipkart_clone/features/products/models/product.dart';
import 'package:flipkart_clone/features/products/screens/product_detail_screen.dart';
import 'package:flipkart_clone/shared/utils/utils.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push<dynamic>(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetailScreen(product: product)));
      },
      child: Card(
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Hero(
                tag: product.id,
                child: CachedNetworkImage(
                  imageUrl: product.image,
                  height: 140,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    product.category.capitalize(),
                    maxLines: 2,
                    style:
                        const TextStyle(fontSize: 15, color: Colors.blueGrey),
                  ),
                  Text(
                    product.title,
                    maxLines: 2,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '₹${product.price.toString()}',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
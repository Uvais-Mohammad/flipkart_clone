import 'package:flipkart_clone/features/products/widgets/category_list.dart';
import 'package:flipkart_clone/features/products/widgets/product_list.dart';
import 'package:flipkart_clone/shared/config/app_strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.appName),
      ),
      body: const Column(
        children: [
          CategoryList(),
          ProductList(),
        ],
      ),
    );
  }
}

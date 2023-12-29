//selected category

import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedCategoryProvider =
    StateNotifierProvider<SelectedCategory, String>(
        (ref) => SelectedCategory());

class SelectedCategory extends StateNotifier<String> {
  SelectedCategory() : super("All");

  void selectCategory(String category) {
    state = category;
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/category_data.dart';


final categoryProvider = Provider(
  (ref) {
    return categoryItems;
  },
);
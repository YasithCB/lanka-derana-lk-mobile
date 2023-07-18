import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/item_data.dart';

final itemsProvider = Provider(
  (ref) {
    return dummyProductItems;
  },
);
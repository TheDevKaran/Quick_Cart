import 'package:quickcart/features/categories/domain/entities.dart';

import '../entities/store.dart';

abstract class StoreRepository{
  List<Store> loadAllStores(Categories categories);
}
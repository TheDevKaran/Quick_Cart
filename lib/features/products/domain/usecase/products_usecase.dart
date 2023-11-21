import 'package:quickcart/core/usecase/usecase.dart';
import 'package:quickcart/features/products/domain/entities/products.dart';
import 'package:quickcart/features/products/domain/repository/products_repository.dart';

import '../../../categories/domain/entities.dart';

class ProductsUseCase implements UseCase<List<Product>, Categories> {
  final ProductsRepository _productsRepository;
  const ProductsUseCase(this._productsRepository);
  @override
  List<Product> call({required Categories params}) =>
      _productsRepository.loadAllProducts(params);
}

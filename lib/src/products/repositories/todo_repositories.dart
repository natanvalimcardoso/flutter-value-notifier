import 'package:dio/dio.dart';
import 'package:vallue_notifier/src/products/models/product_model.dart';

class TodoRepositories {
  final url = 'http://10.0.2.2:3031/products';

  Future<List<ProductModel>> fetchProducts() async {
    final response = await Dio().get(url);
    final list = response.data as List;
    return list.map((e) => ProductModel.fromJson(e)).toList();
  }
}

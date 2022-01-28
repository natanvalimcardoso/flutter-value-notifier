import 'package:dio/dio.dart';
import 'package:vallue_notifier/src/products/models/product_model.dart';

class TodoRepositories {
  var dio = Dio();
  final url = 'http://localhost:3031/products';

  Future<List<ProductModel>> fetchTodos() async {
    final response = await dio.get(url);
    final list = response.data as List;
    return list.map((e) => ProductModel.fromJson(e)).toList();
  }
}

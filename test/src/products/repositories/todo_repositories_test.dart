import 'package:flutter_test/flutter_test.dart';
import 'package:vallue_notifier/src/products/repositories/todo_repositories.dart';

void main() {
  final service = TodoRepositories();
  test('Deve pegar todos os produtos', () async {
    final products = await service.fetchProducts();
    prints(products);
  });
}

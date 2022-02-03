import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:vallue_notifier/src/products/repositories/todo_repositories.dart';

class DioMock extends Mock implements Dio{}

void main() {
  final dioMock = DioMock();
  final service = TodoRepositories();

  test('Deve pegar todos os produtos', () async {
    final products = await service.fetchProducts();
    print(products);
  });
}

final jsonResponse = jsonDecode('');
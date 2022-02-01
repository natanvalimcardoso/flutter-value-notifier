import 'package:flutter/material.dart';
import 'package:vallue_notifier/src/products/repositories/todo_repositories.dart';
import './home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ValueListenableBuilder<int>(
          valueListenable: counter, 
          builder: (context, value, child) {
            return Text('Flutterando $value');
          },
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: counter.increment,
      ),
    );
  }
  model() async{
    final model = await TodoRepositories().fetchProducts();
    print(model);
  }
}

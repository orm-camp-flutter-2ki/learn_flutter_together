import 'package:flutter/material.dart';

import '../00_common_data/model/todo.dart';
import '../00_common_data/repository/todo_repository.dart';

class FutureBuilderSample extends StatelessWidget {
  final TodoRepository todoRepository;

  const FutureBuilderSample({
    super.key,
    required this.todoRepository,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FutureBuilder 방식'),
      ),
      body: Center(
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return FutureBuilder<List<Todo>>(
      future: todoRepository.getTodos(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        return ListView(
          children: snapshot.data!
              .map((e) => ListTile(
                    title: Text(e.title),
                  ))
              .toList(),
        );
      },
    );
  }
}

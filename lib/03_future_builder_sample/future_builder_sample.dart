import 'package:flutter/material.dart';

import '../00_common_data/model/todo.dart';
import '../00_common_data/repository/todo_repository.dart';

class FutureBuilderSample extends StatefulWidget {
  const FutureBuilderSample({super.key});

  @override
  State<FutureBuilderSample> createState() => _FutureBuilderSampleState();
}

class _FutureBuilderSampleState extends State<FutureBuilderSample> {
  final todoRepository = TodoRepositoryImpl();

  List<Todo> _todos = [];
  bool isLoading = false;

  // 생성자 느낌
  @override
  void initState() {
    super.initState();
    print('initState');

    setState(() {
      isLoading = true;
    });
    todoRepository.getTodos().then((todos) {
      setState(() {
        _todos = todos;
        isLoading = false;
      });
    });
  }

  // 그림 그리는 부분
  @override
  Widget build(BuildContext context) {
    print('build');
    // 데이터 요청 절대 금지
    // todoRepository.getTodos().then((todos) {
    //   setState(() {
    //     _todos = todos;
    //   });
    // });

    return Scaffold(
      appBar: AppBar(
        title: const Text('FutureBuilder 방식'),
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: getText(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            switch(snapshot.connectionState) {
              case ConnectionState.none:
                return const Text('none');
              case ConnectionState.waiting:
                return const CircularProgressIndicator();
              case ConnectionState.active:
                return const Text('active');
              case ConnectionState.done:
                return Text(snapshot.data!);
            }
          },
        ),
      ),
    );
  }

  Future<String> getText() async {
    await Future.delayed(const Duration(seconds: 2));
    return '완성';
  }

  Widget _buildBody() {
    if (isLoading) {
      return const CircularProgressIndicator();
    }

    if (_todos.isEmpty) {
      return const Text(
        '아무것도 없음',
        style: TextStyle(fontSize: 40),
      );
    } else {
      return ListView(
        children: _todos
            .map((e) => ListTile(
                  title: Text(e.title),
                ))
            .toList(),
      );
    }
  }
}

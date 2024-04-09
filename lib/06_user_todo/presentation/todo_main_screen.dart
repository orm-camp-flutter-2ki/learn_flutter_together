import 'package:flutter/material.dart';
import 'package:learn_flutter_together/06_user_todo/presentation/todo_main_view_model.dart';

class TodoMainScreen extends StatefulWidget {
  final TodoMainViewModel todoMainViewModel;

  const TodoMainScreen({
    super.key,
    required this.todoMainViewModel,
  });

  @override
  State<TodoMainScreen> createState() => _TodoMainScreenState();
}

class _TodoMainScreenState extends State<TodoMainScreen> {
  void updateUI() => setState(() {});

  @override
  void initState() {
    super.initState();

    widget.todoMainViewModel.addListener(updateUI);
  }

  @override
  void dispose() {
    widget.todoMainViewModel.removeListener(updateUI);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = widget.todoMainViewModel;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        actions: [
          TextButton(
            onPressed: () => viewModel.fetchUsers(),
            child: const Text('새로고침'),
          ),
          TextButton(
            onPressed: () => viewModel.onClickFinish(),
            child: const Text('완료'),
          ),
          TextButton(
            onPressed: () => viewModel.onClickUnfinished(),
            child: const Text('미완료'),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: viewModel.isUsersLoading
                ? const Center(child: CircularProgressIndicator())
                : ListView(
                    children: viewModel.users
                        .map((user) => ListTile(
                              onTap: () => viewModel.onSelectUser(user),
                              title: Text(user.name),
                              subtitle: Text(user.userName),
                            ))
                        .toList(),
                  ),
          ),
          const Divider(),
          Expanded(
            child: viewModel.isTodosLoading
                ? const Center(child: CircularProgressIndicator())
                : ListView(
                    children: viewModel.todos
                        .map(
                          (todo) => ListTile(
                            title: Text(todo.title),
                            trailing: todo.completed
                                ? const Icon(Icons.check_box)
                                : const Icon(Icons.check_box_outline_blank),
                          ),
                        )
                        .toList(),
                  ),
          ),
        ],
      ),
    );
  }
}

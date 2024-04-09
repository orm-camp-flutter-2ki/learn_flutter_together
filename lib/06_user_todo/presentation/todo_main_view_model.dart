import 'package:flutter/material.dart';
import 'package:learn_flutter_together/00_common_data/repository/todo_repository.dart';
import 'package:learn_flutter_together/00_common_data/repository/user_repository.dart';

import '../../00_common_data/model/todo.dart';
import '../../00_common_data/model/user.dart';

class TodoMainViewModel with ChangeNotifier {
  final UserRepository _userRepository;
  final TodoRepository _todoRepository;

  TodoMainViewModel({
    required UserRepository userRepository,
    required TodoRepository todoRepository,
  })  : _userRepository = userRepository,
        _todoRepository = todoRepository {
    fetchUsers();
  }

  List<User> _users = [];

  List<User> _filteredUsers = [];

  List<User> get users => List.unmodifiable(_filteredUsers);

  bool _isUsersLoading = false;

  List<Todo> _todos = [];

  List<Todo> _filteredTodos = [];

  List<Todo> get todos => List.unmodifiable(_filteredTodos);

  bool _isTodosLoading = false;

  bool get isUsersLoading => _isUsersLoading;

  bool get isTodosLoading => _isTodosLoading;

  void fetchUsers() async {
    _isUsersLoading = true;
    notifyListeners();

    _users = await _userRepository.getUsers();
    _filteredUsers = _users;
    _isUsersLoading = false;
    notifyListeners();
  }

  void onSelectUser(User user) async {
    _isTodosLoading = true;
    notifyListeners();

    final todos = await _todoRepository.getTodos();
    _todos = todos.where((todo) => todo.userId == user.id).toList();
    _filteredTodos = _todos;
    _isTodosLoading = false;
    notifyListeners();
  }

  void onClickFinish() {
    _filteredTodos = _todos.where((e) => e.completed).toList();
    notifyListeners();
  }

  void onClickUnfinished() {
    _filteredTodos = _todos.where((e) => !e.completed).toList();
    notifyListeners();
  }

  void onSearchName(String name) {
    _filteredUsers = _users.where((e) {
      return e.userName.toLowerCase().contains(name.toLowerCase()) ||
          e.name.toLowerCase().contains(name.toLowerCase());
    }).toList();
    notifyListeners();
  }
}

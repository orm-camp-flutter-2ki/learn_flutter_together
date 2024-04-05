import '../data_source/json_place_holder_api.dart';
import '../model/todo.dart';

abstract interface class TodoRepository {
  Future<List<Todo>> getTodos();

  Future<List<Todo>> getCompletedTodos();
}

class TodoRepositoryImpl implements TodoRepository {
  final _api = JsonPlaceHolderApi();

  @override
  Future<List<Todo>> getCompletedTodos() async {
    final results = await _api.getTodos();
    return results.where((e) => e.completed == true).toList();
  }

  @override
  Future<List<Todo>> getTodos() async {
    await Future.delayed(const Duration(seconds: 2));
    return _api.getTodos();
  }
}

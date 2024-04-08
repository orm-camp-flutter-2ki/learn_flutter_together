// 비즈니스 로직
import 'package:learn_flutter_together/05_counter_mvvm/repository/counter_repository.dart';

class MainViewModel {
  final _repository = CounterRepository();

  int get counter => _repository.counter;

  String get bossCounter => '⭐️$counter👍';

  void incrementCounter() {
    _repository.counter++;
  }

  void reset() {
    _repository.counter = 0;
  }

  void x2() {
    _repository.counter = _repository.counter * 2;
  }
}

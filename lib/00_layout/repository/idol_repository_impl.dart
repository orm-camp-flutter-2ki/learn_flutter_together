import 'package:learn_flutter_together/00_layout/data_source/idol_data_source.dart';
import 'package:learn_flutter_together/00_layout/model/idol.dart';
import 'package:learn_flutter_together/00_layout/repository/idol_repository.dart';

class IdolRepositoryImpl implements IdolRepository {
  final IdolDataSource _dataSource;

  IdolRepositoryImpl(this._dataSource);

  @override
  List<Idol> getIdols() => _dataSource.getIdols();
}

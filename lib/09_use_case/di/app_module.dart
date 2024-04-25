import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @prod
  @lazySingleton
  String get title => '이미지 검색 앱';
}

@module
abstract class AppDevModule {
  @dev
  @lazySingleton
  String get title => '이미지 검색 앱 (디버그)';
}

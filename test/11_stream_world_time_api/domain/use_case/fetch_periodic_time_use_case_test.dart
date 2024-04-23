import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/di/di_setup.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/domain/model/time.dart';
import 'package:learn_flutter_together/11_stream_world_time_api/domain/use_case/fetch_periodic_time_use_case.dart';

void main() {
  setUp(() => diSetup());

  test('FetchPeriodicTimeUseCase Test', () async {
    // final timeRepository = getIt<TimeRepository>();
    //
    // final useCase = FetchPeriodicTimeUseCase(
    //   second: 1,
    //   timeRepository: timeRepository,
    // );
    final useCase = getIt<FetchPeriodicTimeUseCase>();

    useCase.execute().listen(expectAsync1(
          (event) {
            print(event);
            expect(event, isA<Time>());
          },
          count: 3,
        ));
  });
}

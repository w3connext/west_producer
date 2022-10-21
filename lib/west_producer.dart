import 'package:get_it/get_it.dart';
import 'package:west_producer/di/service_locator.dart';
import 'package:west_producer/domain/model/sent_report_request.dart';
import 'package:west_producer/domain/model/sent_report_response.dart';
import 'package:west_producer/domain/sent_report_usecase.dart';
import 'package:west_producer/network/endpoint_config.dart';

class WestProducer {
  WestProducer(String baseUrl) {
    GetIt.I.registerLazySingleton(() => EndpointConfig(baseUrl: baseUrl));
    ServiceLocator.setUpLocator();
  }

  factory WestProducer.instance(String baseUrl) => WestProducer(baseUrl);

  Future<SentReportResponse> sentReport({
    required String screen,
    required String testCase,
    required String tester,
    required String result,
  }) async {
    final request = SentReportRequest(
      screen: screen,
      testCase: testCase,
      tester: tester,
      result: result,
    );
    final sentReportRequestUseCase = GetIt.I.get<SentReportRequestUseCase>();
    final response = await sentReportRequestUseCase.execute(request);
    print('SEND REPORT --> ${response.message.toUpperCase()}');
    return response;
  }
}

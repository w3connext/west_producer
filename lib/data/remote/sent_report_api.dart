import 'package:dio/dio.dart';
import 'package:west_producer/domain/model/sent_report_request.dart';
import 'package:west_producer/domain/model/sent_report_response.dart';
import 'package:west_producer/network/safe_api_call.dart';

abstract class SentReportApi {
  Future<SentReportResponse> sentReport(SentReportRequest request);
}

class SentReportRestApi implements SentReportApi {
  final Dio dio;

  SentReportRestApi(this.dio);

  @override
  Future<SentReportResponse> sentReport(SentReportRequest request) async {
    return SentReportResponse.fromJson(await safeApiCall(
      () => dio.post('/v1/report', data: request.toJson()),
    ));
  }
}

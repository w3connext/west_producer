import 'package:west_producer/data/remote/sent_report_api.dart';
import 'package:west_producer/data/sent_report_datasource.dart';
import 'package:west_producer/domain/model/sent_report_request.dart';
import 'package:west_producer/domain/model/sent_report_response.dart';

class SentReportRemoteDataSource implements SentReportDataSource {
  final SentReportApi sentReportApi;

  SentReportRemoteDataSource(this.sentReportApi);

  @override
  Future<SentReportResponse> sentReport(SentReportRequest request) {
    return sentReportApi.sentReport(request);
  }
}

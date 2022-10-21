import 'package:west_producer/domain/model/sent_report_request.dart';
import 'package:west_producer/domain/model/sent_report_response.dart';

abstract class SentReportDataSource {
  Future<SentReportResponse> sentReport(SentReportRequest request);
}

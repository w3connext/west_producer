import 'package:west_producer/data/sent_report_datasource.dart';
import 'package:west_producer/domain/model/sent_report_request.dart';
import 'package:west_producer/domain/model/sent_report_response.dart';

abstract class SentReportRepository {
  Future<SentReportResponse> sentReport(SentReportRequest request);
}

class DefaultSentReportRepository implements SentReportRepository {
  final SentReportDataSource sentReportRemoteDataSource;

  DefaultSentReportRepository(this.sentReportRemoteDataSource);

  @override
  Future<SentReportResponse> sentReport(SentReportRequest request) {
    return sentReportRemoteDataSource.sentReport(request);
  }
}

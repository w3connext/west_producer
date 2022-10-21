import 'package:west_producer/core/core/usecase.dart';
import 'package:west_producer/data/sent_report_repository.dart';
import 'package:west_producer/domain/model/sent_report_request.dart';
import 'package:west_producer/domain/model/sent_report_response.dart';

abstract class SentReportRequestUseCase
    extends UseCase<SentReportRequest, SentReportResponse> {}

class DefaultSentReportRequestUseCase implements SentReportRequestUseCase {
  final SentReportRepository sentReportRepository;

  DefaultSentReportRequestUseCase(this.sentReportRepository);

  @override
  Future<SentReportResponse> execute(SentReportRequest request) {
    return sentReportRepository.sentReport(request);
  }
}

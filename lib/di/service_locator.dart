import 'package:get_it/get_it.dart';
import 'package:west_producer/data/remote/sent_report_api.dart';
import 'package:west_producer/data/remote/sent_report_remote_datasource.dart';
import 'package:west_producer/data/sent_report_datasource.dart';
import 'package:west_producer/data/sent_report_repository.dart';
import 'package:west_producer/domain/sent_report_usecase.dart';
import 'package:west_producer/network/network_locator.dart';

class ServiceLocator {
  static void setUpLocator() {
    NetworkLocator.setup();

    GetIt.I.registerFactory<SentReportApi>(
      () => SentReportRestApi(GetIt.I.get()),
    );
    GetIt.I.registerFactory<SentReportDataSource>(
      () => SentReportRemoteDataSource(GetIt.I.get()),
    );
    GetIt.I.registerFactory<SentReportRepository>(
      () => DefaultSentReportRepository(GetIt.I.get()),
    );
    GetIt.I.registerFactory<SentReportRequestUseCase>(
      () => DefaultSentReportRequestUseCase(GetIt.I.get()),
    );
  }
}

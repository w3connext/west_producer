import 'package:west_producer/domain/model/report_data.dart';

class SentReportResponse {
  SentReportResponse({
    this.message = "",
    this.data,
  });

  String message;
  ReportData? data;

  factory SentReportResponse.fromJson(Map<String, dynamic> json) =>
      SentReportResponse(
        message: json["message"],
        data: json["data"] != null ? ReportData.fromJson(json["data"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data != null ? data!.toJson() : null,
      };
}

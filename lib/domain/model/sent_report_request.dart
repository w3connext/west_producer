class SentReportRequest {
  SentReportRequest({
    this.screen = "",
    this.testCase = "",
    this.tester = "",
    this.result = "",
  });

  String screen;
  String testCase;
  String tester;
  String result;

  factory SentReportRequest.fromJson(Map<String, dynamic> json) =>
      SentReportRequest(
        screen: json["screen"] ?? "",
        testCase: json["testCase"] ?? "",
        tester: json["tester"] ?? "",
        result: json["result"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "screen": screen,
        "testCase": testCase,
        "tester": tester,
        "result": result,
      };
}

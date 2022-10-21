class ReportData {
  ReportData({
    this.screen = "",
    this.testCase = "",
    this.tester = "",
    this.result = "",
    this.id = 0,
    this.updatedAt,
  });

  String screen;
  String testCase;
  String tester;
  String result;
  int id;
  DateTime? updatedAt;

  factory ReportData.fromJson(Map<String, dynamic> json) => ReportData(
        screen: json["screen"] ?? "",
        testCase: json["testCase"] ?? "",
        tester: json["tester"] ?? "",
        result: json["result"] ?? "",
        id: json["id"] ?? 0,
        updatedAt: DateTime.tryParse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "screen": screen,
        "testCase": testCase,
        "tester": tester,
        "result": result,
        "id": id,
        "updatedAt": updatedAt
      };
}

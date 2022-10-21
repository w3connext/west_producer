import 'package:flutter_test/flutter_test.dart';
import 'package:west_producer/west_producer.dart';

void main() {
  late WestProducer westProducer;

  setUp(() {
    westProducer = WestProducer('http://localhost:8080');
  });

  test('Should return report response when send report success', () async {
    // Given & When
    final actual = await westProducer.sentReport(
      screen: 'west producer#5',
      testCase: 'test sent data from west producer #3',
      tester: 'gap',
      result: 'success',
    );

    // Then
    expect(actual.message, 'success');
  });
}

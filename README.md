# west_producer

### How to use

```dart
final westProducer = WestProducer('http://localhost:8080');

try {
    
    // UI Test
    testLogin()
    
    // Send report
    await westProducer.sentReport(
        screen: 'west producer#5',
        testCase: 'test sent data from west producer #3',
        tester: 'gap',
        result: 'success',
    );
} catch (e) {
    // Send report
    await westProducer.sentReport(
        screen: 'west producer#5',
        testCase: 'test sent data from west producer #3',
        tester: 'gap',
        result: 'failure',
    );
    
    rethrow;
}
```
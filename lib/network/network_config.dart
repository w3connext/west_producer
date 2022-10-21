import 'package:dio/dio.dart';
import 'package:west_producer/network/endpoint_config.dart';

class NetworkConfig {
  final EndpointConfig endpointConfig;

  NetworkConfig(this.endpointConfig);

  Dio config() {
    var options = BaseOptions(
      baseUrl: endpointConfig.baseUrl,
      connectTimeout: 36000,
      receiveTimeout: 36000,
    );
    Dio dio = Dio(options);
    return dio;
  }
}

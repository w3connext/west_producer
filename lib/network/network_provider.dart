import 'package:dio/dio.dart';
import 'package:west_producer/network/network_config.dart';
class NetworkProvider {
  final NetworkConfig networkConfig;

  NetworkProvider(this.networkConfig);

  Dio create() {
    return networkConfig.config();
  }
}

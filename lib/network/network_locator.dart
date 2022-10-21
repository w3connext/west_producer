import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:west_producer/network/network_config.dart';
import 'package:west_producer/network/network_provider.dart';

class NetworkLocator {
  static void setup() {
    GetIt.I.registerFactory(
      () => NetworkConfig(GetIt.I.get()),
    );
    GetIt.I.registerFactory(
      () => NetworkProvider(GetIt.I.get()),
    );
    GetIt.I.registerFactory<Dio>(
      () => GetIt.I.get<NetworkProvider>().create(),
    );
  }
}

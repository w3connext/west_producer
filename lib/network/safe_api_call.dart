import 'dart:async';

import 'package:dio/dio.dart';
import 'package:west_producer/core/exception/client_error_exception.dart';
import 'package:west_producer/core/exception/no_content_exception.dart';
import 'package:west_producer/core/exception/remote_exception.dart';
import 'package:west_producer/core/exception/server_error_exception.dart';
import 'package:west_producer/core/exception/unauthorization_exception.dart';
import 'package:west_producer/network/extension/exception_extension.dart';

Future<T> safeApiCall<T>(Future<Response> Function() onProcess) async {
  try {
    final response = await onProcess();
    final statusCode = response.statusCode ?? 999;
    if (statusCode >= 200 && statusCode <= 299) {
      final data = response.data;
      if (data != null) {
        return data;
      } else {
        throw NoContentException();
      }
    } else {
      throw RemoteException(response.statusMessage ?? 'Something went wrong');
    }
  } on DioError catch (e) {
    if (e.type == DioErrorType.response) {
      final response = e.response;
      final statusCode = response?.statusCode ?? 999;
      if (statusCode == 401) {
        throw UnAuthorizationException();
      } else if (statusCode >= 400 && statusCode <= 499) {
        throw ClientErrorException(
          response?.statusMessage ?? 'Bad Request',
          response?.data ?? {},
        );
      } else if (statusCode >= 500 && statusCode <= 599) {
        throw ServerErrorException(
          response?.statusMessage ?? 'Internal Server Error',
        );
      } else {
        throw RemoteException(
          response?.statusMessage ?? 'Something went wrong',
        );
      }
    } else if (e.type == DioErrorType.connectTimeout ||
        e.type == DioErrorType.receiveTimeout) {
      throw TimeoutException(e.message);
    } else {
      throw RemoteException(e.message);
    }
  } catch (e) {
    if (e.isNoContentException) {
      throw NoContentException();
    } else {
      throw RemoteException('Something went wrong');
    }
  }
}

import 'dart:async';

import 'package:west_producer/core/exception/client_error_exception.dart';
import 'package:west_producer/core/exception/no_content_exception.dart';
import 'package:west_producer/core/exception/no_network_exception.dart';
import 'package:west_producer/core/exception/remote_exception.dart';
import 'package:west_producer/core/exception/server_error_exception.dart';
import 'package:west_producer/core/exception/unauthorization_exception.dart';

extension ExceptionExtension on Exception {
  bool get isTimeoutException => this is TimeoutException;

  bool get isNoNetworkException => this is NoNetworkException;

  bool get isNoContentException => this is NoContentException;

  bool get isUnAuthorizationException => this is UnAuthorizationException;

  bool get isServerErrorException => this is ServerErrorException;

  bool get isRemoteException => this is RemoteException;

  bool get isClientErrorException => this is ClientErrorException;
}

extension ObjectExceptionExtension on Object {
  bool get isTimeoutException => this is TimeoutException;

  bool get isNoNetworkException => this is NoNetworkException;

  bool get isNoContentException => this is NoContentException;

  bool get isUnAuthorizationException => this is UnAuthorizationException;

  bool get isServerErrorException => this is ServerErrorException;

  bool get isRemoteException => this is RemoteException;

  bool get isClientErrorException => this is ClientErrorException;
}

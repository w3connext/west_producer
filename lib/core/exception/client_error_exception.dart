class ClientErrorException implements Exception {
  String cause;
  dynamic data;

  ClientErrorException(this.cause, this.data);
}

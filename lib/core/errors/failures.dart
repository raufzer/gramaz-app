import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);


  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with the server.");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout in connection with the server.");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout in connection with the server.");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad certificate detected.");
      case DioExceptionType.badResponse:
        return ServerFailure(_handleBadResponse(dioError.response?.statusCode));
      case DioExceptionType.cancel:
        return ServerFailure("Request to the server was cancelled.");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection error occurred.");
      case DioExceptionType.unknown:
        return ServerFailure("An unknown error occurred.");
      }
  }

  static String _handleBadResponse(int? statusCode) {
    if (statusCode != null) {
      switch (statusCode) {
        case 400:
          return "Bad request.";
        case 401:
          return "Unauthorized access.";
        case 403:
          return "Forbidden access.";
        case 404:
          return "Resource not found.";
        case 500:
          return "Internal server error.";
        default:
          return "Received an invalid response: $statusCode.";
      }
    }
    return "Received an invalid response with no status code.";
  }
}

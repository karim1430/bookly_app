import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServiceFailure extends Failure {
  ServiceFailure(super.errMessage);

  factory ServiceFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServiceFailure('Connection timout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServiceFailure('Send timout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServiceFailure('Receive timout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServiceFailure('bad Certificate timout with ApiServer');
      case DioExceptionType.badResponse:
        return ServiceFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response);
      case DioExceptionType.cancel:
        return ServiceFailure('Request to ApiServer Canceld');
      case DioExceptionType.connectionError:
        return ServiceFailure('No Intenet Connection');
      case DioExceptionType.unknown:
        return ServiceFailure(dioError.error.toString());
    }
  }

  factory ServiceFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 402) {
      return ServiceFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServiceFailure('your request not found , please try later ');
    } else if (statusCode == 500) {
      return ServiceFailure('Internal Server error , please try later');
    } else {
      return ServiceFailure('Oops there was an error , please try later');
    }
  }
}

import 'dart:io';

import 'package:dio/dio.dart';

abstract class Failuers {
  final String errorMessage;

  const Failuers(this.errorMessage);
}

class ServerFailure extends Failuers {
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Time Out With ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Time Out With ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Time Out With ApiServer');
      case DioExceptionType.badCertificate:
      case DioExceptionType.badResponse:
        if (dioException.response?.statusCode != null) {
          return ServerFailure.fromResponse(
              dioException.response!.statusCode!, dioException.response!.data);
        } else {
          return ServerFailure(
              'Received a bad response with unknown status code');
        }
      case DioExceptionType.cancel:
        return ServerFailure('Connection With ApiServer was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('Error on Connection With ApiServer');
      case DioExceptionType.unknown:
        if (dioException.error is SocketException) {
          return ServerFailure('No Internet connection');
        }
        return ServerFailure('Unknown Error Occurred , try again');
      default:
        return ServerFailure('Oops, there was an error,Please try again!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later!');
    } else {
      return ServerFailure('Oops, there was an error,Please try again!');
    }
  }
}

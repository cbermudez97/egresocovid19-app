import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';

Left<ErrorEntity, T> catchMethod<T>(Object e) {
  var error = ErrorEntity(
    errorCode: '0',
    message: e.toString(),
  );
  switch (e.runtimeType) {
    case DioError:
      final resp = (e as DioError).response;
      if (resp != null &&
          resp.statusCode != null &&
          resp.statusMessage != null) {
        error = ErrorEntity(
          errorCode: resp.statusCode.toString(),
          message: resp.statusMessage!,
        );
      }
  }
  log('errorCode: ${error.errorCode}, message: ${error.message}');
  return Left(error);
}

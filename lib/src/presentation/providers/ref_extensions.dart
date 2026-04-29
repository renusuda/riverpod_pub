import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

extension CancelTokenX on Ref {
  CancelToken cancelToken() {
    final cancelToken = CancelToken();
    onDispose(cancelToken.cancel);
    return cancelToken;
  }
}

import 'package:dio/dio.dart' show DioException;

abstract class DataState<T> {
  final T? data;
  final DioException? error;

  const DataState({this.data, this.error});
}

/// Success reponse
class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

/// failed response
class DataFailed<T> extends DataState<T> {
  const DataFailed(DioException error) : super(error: error);
}

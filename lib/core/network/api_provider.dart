import 'package:dio/dio.dart';

class ApiProvider {
  Dio? _dio;

  static BaseOptions baseOptions = BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com/',
      connectTimeout: const Duration(milliseconds: 900000),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      });

  ApiProvider._internal() {
    _dio = Dio(baseOptions);
  }

  static final _singleton = ApiProvider._internal();
  factory ApiProvider() {
    return _singleton;
  }

  Future<Response> get(path) async => await _dio!.get(path);

  Future<Response> post(path, {Map<String, dynamic>? data}) async =>
      await _dio!.post(path, data: data);

  Future<Response> patch(path, {Object? data}) async =>
      await _dio!.patch(path, data: data);

  Future<Response> put(path, {Object? data}) async =>
      await _dio!.put(path, data: data);
}

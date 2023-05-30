import 'dart:convert';
import 'package:dio/dio.dart';

class ApiService {
  late Dio _dio;

  apiService() {
    _dio = Dio(BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com/',
      connectTimeout: const Duration(seconds: 50),
      receiveTimeout: const Duration(seconds: 30),
    ));

    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      // Do something before request is sent
      return handler.next(options); //continue
      // If you want to resolve the request with some custom data，
      // you can resolve a `Response` object eg: `handler.resolve(Response(data:"xxx"))`
    }, onResponse: (response, handler) {
      // Do something with response data
      return handler.next(response); // continue
      // If you want to reject the response with a error message,
      // you can reject a `DioError` object eg: `handler.reject(DioError(error: 'xxx'))`
    }, onError: (DioError e, handler) {
      // Do something with response error
      return handler.next(e); //continue
    }));
  }

  Future<List<dynamic>> getPosts() async {
    try {
      final response = await _dio.get('posts');
      if (response.statusCode == 200) {
        return jsonDecode(response.data);
      } else {
        throw Exception('Failed to load posts');
      }
    } catch (e) {
      rethrow;
    }
  }
}

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Apiserver {
  final Dio dio;
  final String baseUrl = "https://newsdata.io/api/1/latest";

  Apiserver({required this.dio});

  String get apiKey => dotenv.env['API_KEY'] ?? '';

  Future<Map<String, dynamic>> get({Map<String, dynamic>? query}) async {
    final response = await dio.get(
      baseUrl,
      queryParameters: {'apikey': apiKey, ...?query},
    );

    return response.data;
  }
}

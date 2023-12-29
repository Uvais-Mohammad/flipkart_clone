import 'dart:convert';

import 'package:http/http.dart' as http;

abstract class IRestClient {
  Future<http.Response> get(String url,{Map<String, String>? queryParameters});
  Future<http.Response> post(
    String url, {
    Map<String, String>? headers,
    dynamic body,
    Encoding? encoding,
  });
  
}

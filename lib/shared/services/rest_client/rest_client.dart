import 'dart:convert';
import 'dart:developer';

import 'package:flipkart_clone/shared/services/rest_client/i_rest_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final restClientProvider = Provider<IRestClient>((ref) {
  return RestClient(ref);
});

class RestClient implements IRestClient {
  final String baseUrl = 'https://fakestoreapi.com';
  RestClient(this.ref);
  final ProviderRef<dynamic> ref;

  @override
  Future<http.Response> get(String url,
      {Map<String, String>? queryParameters}) async {
    return await http.get(Uri.parse('$baseUrl$url'));
  }

  @override
  Future<http.Response> post(
    String url, {
    Map<String, String>? headers,
    dynamic body,
    Encoding? encoding,
  }) async {
    try {
      final response = await http.post(
        Uri.parse(
          '$baseUrl$url',
        ),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
        encoding: encoding,
      );
      log(response.body);
      if (response.statusCode != 200) {
        throw Exception('Failed to load data');
      }
      return response;
    } catch (e) {
      throw 'Failed to connect to server';
    }
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;

class SeeHttpHelper {
  static const String _baseUrl = '';

  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse("$_baseUrl/$endpoint"));
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> post(
    String endpoint,
    dynamic data,
  ) async {
    final response = await http.post(
      Uri.parse("$_baseUrl/$endpoint"),
      headers: {"contene-type": 'application/json'},
      body: jsonEncode(data),
    );
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse("$_baseUrl/$endpoint"),
      headers: {"contene-type": 'application/json'},
      body: jsonEncode(data),
    );
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> delet(String endpoint) async {
    final response = await http.delete(Uri.parse("$_baseUrl/$endpoint"));
    return _handleResponse(response);
  }

  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("failed to load data : ${response.statusCode}");
    }
  }
}

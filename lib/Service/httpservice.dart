import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class HttpService{
  static String baseURL = 'https://jsonplaceholder.typicode.com/';
    static Future<http.Response> getDataRequest({required String url})async{
    Map<String, String> headers = {
    "Content-Type": "application/json",};
    http.Response response = await http.get(
    Uri.parse('$baseURL$url'),
  );
  return response;
  }
}
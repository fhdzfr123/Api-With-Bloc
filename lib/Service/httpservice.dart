import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class HttpService{
  static String baseURL = 'https://jsonplaceholder.typicode.com/';
  static postDataRequest({required Map<String, dynamic> body,required String type,required String url})async{
    Map<String, String> headers = {
    "Content-Type": "application/json",};
    http.Response response = await http.post(
    Uri.parse('$baseURL$url'),
    headers: headers,
    body: jsonEncode(body),
  );
  print(response.statusCode);
  return response;
  }
    static Future<http.Response> getDataRequest({required String url})async{
    Map<String, String> headers = {
    "Content-Type": "application/json",};
    http.Response response = await http.get(
    Uri.parse('$baseURL$url'),
  );
  print(response.statusCode);
  return response;
  }
}
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:swtstay/app/app_storage.dart';

class ApiService {
  // api request class properties
  final String url = 'https://app-dev.agopay.africa/';
  String? authToken;

  // set http request headers
  Map<String, String> _authHeaders() =>
      {'Accept': 'application/json', 'Authorization': 'Bearer $authToken'};

  Map<String, String> _authPostHeaders() => {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $authToken'
      };

  Map<String, String> _generalHeaders() => {'Accept': 'application/json'};

  Map<String, String> _authMultipartHeaders() => {
        'Content-Type': 'multipart/form-data',
        'Accept': 'application/json',
        'Authorization': 'Bearer $authToken'
      };

  // unauthenticated get request
  Future<http.Response> generalGetData({required String endpoint}) async {
    return await http.get(Uri.parse(url + endpoint),
        headers: _generalHeaders());
  }

  // For Multipart headers
  Future<http.Response> authMultipartGetData({required String endpoint}) async {
    authToken = await AppStorage().getAuthToken();
    return await http.get(Uri.parse(url + endpoint),
        headers: _authMultipartHeaders());
  }

  // authenticated get request
  Future<http.Response> authGetData({required String endpoint}) async {
    authToken = await AppStorage().getAuthToken();
    return await http.get(Uri.parse(url + endpoint), headers: _authHeaders());
  }

  // unauthenticated post request
  Future<http.Response> generalPostData(
      {required String endpoint, required Map data}) async {
    return await http.post(Uri.parse(url + endpoint),
        body: data, headers: _generalHeaders());
  }

  // authenticated post request
  Future<http.Response> authPostData(
      {required String endpoint, required Map data}) async {
    authToken = await AppStorage().getAuthToken();
    return await http.post(Uri.parse(url + endpoint),
        body: jsonEncode(data), headers: _authPostHeaders());
  }

  // authenticated MultiPart post request
  Future<http.Response> authMultiPartPostData(
      {required String endpoint, required Map data}) async {
    authToken = await AppStorage().getAuthToken();
    return await http.post(Uri.parse(url + endpoint),
        body: jsonEncode(data), headers: _authPostHeaders());
  }
}

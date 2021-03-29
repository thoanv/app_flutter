import 'dart:convert';

import 'package:http/http.dart' as http;

class CallApi{
  final String base_url = "https://davichat.club";

  postData(data, appUrl) async {
    var fullUrl = base_url + appUrl;
    return await http.post(
      fullUrl,
      body: jsonEncode(data),
      headers: _setHeaders()
    );
  }

  getData(appUrl) async {
    var fullUrl = base_url + appUrl;
    return await http.post(
        fullUrl,
        headers: _setHeaders()
    );
  }

  _setHeaders() => {
    'Content-type' : 'application/json',
    'Accept' : 'application/json',
  };
}
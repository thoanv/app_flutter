import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class CallApi{
  final String base_url = "https://api.davichat.info/";
  // Future postData(data, appUrl) async {
  //   final response = await http.post(
  //     Uri.https(base_url, appUrl),
  //     headers: <String, String>{
  //       "Content-Type": "application/json; charset=UTF-8",
  //       "Accept":"application/json"
  //     },
  //     body: jsonEncode(data),
  //   );
  //
  //     // If the server did return a 201 CREATED response,
  //     // then parse the JSON.
  //     print(response);
  //
  // }
  // postData(data, appUrl) async{
  //   final response = await http.post(
  //     Uri.https(base_url, appUrl),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(<String, String>{
  //       'phone': '0356240993',
  //       'password': '12345678',
  //       'device_name' : 'mobile',
  //     }),
  //   );
  //   print(response);
  //   // if (response.statusCode == 201) {
  //   //   print(response);
  //   //   return response;
  //   // } else {
  //   //   print('vào đây');
  //   //   print(response);
  //   // }
  // }
  postData(appUrl, data) async {
    var url = Uri.parse(base_url+appUrl);
    var response = await http.post(url, body: data);
      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception('Failed.');
      }
  }
  // postData(data, apiUrl) async {
  //   Map<String, String> headers = {'Content-Type':'application/json'};
  //   var response = await http.post(base_url + apiUrl, headers: headers, body: jsonEncode(data));
  //   int statusCode = response.statusCode;
  //   print(response);
  //   String body = response.body;
  // }

  getData(appUrl) async {
    var fullUrl = base_url + appUrl;
    print(fullUrl);
    var response =  await http.get(fullUrl,headers: _setHeaders());
    print(fullUrl);
    print(response);
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed.');
    }
  }

  _setHeaders() => {
    'Content-type' : 'application/json',
    'Accept': 'application/json',
  };
}
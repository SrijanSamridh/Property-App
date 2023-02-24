import 'dart:html';

import 'package:http/http.dart' as http;

Function apiCall(String url){
  return () async {
    var data = Uri.parse(url);
    var response = await http.get(data);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  };
}
import 'package:http/http.dart' as http;

Function apiCall(String url) {
  return () async {
    var data = Uri.parse(url);
    http.Response response = await http.get(data);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return 'Error: ${response.statusCode}';
    }
  };
}

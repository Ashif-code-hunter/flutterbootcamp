import 'dart:convert'; // for decoding json and stuffs
import 'package:http/http.dart' as http;
class NetworkHelper {
  String url ="https://newsapi.org/v2/top-headlines?country=in&apiKey=";
  String apiKey="766a4680c614437a87b75b6368c808a9";
  Future getData() async {
    http.Response response = await http.get(Uri.parse(url+apiKey));
    if (response.statusCode == 200) {
      var data = response.body;
      print(jsonDecode(data));
      return jsonDecode(data);
    } else {
      return response.statusCode;
    }
  }
}
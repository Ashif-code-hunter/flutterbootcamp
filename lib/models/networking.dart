import 'dart:convert'; // for decoding json and stuffs
import 'package:http/http.dart' as http;
class NetworkHelper {
  String url ="https://newsapi.org/v2/top-headlines?country=in&apiKey=";
  String apiKey="82c942c4c677464da998b147d4a7349a";
  Future getData() async {
    http.Response response = await http.get(Uri.parse(url+apiKey));
    if (response.statusCode == 200) {
      var data = response.body;
     //print(jsonDecode(data)['articles'][0]['title']);
      return jsonDecode(data);
    } else {
      return response.statusCode;
    }
  }
}

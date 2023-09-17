import 'dart:convert';

import 'package:http/http.dart' as Http;

class NetworkingHelper {
  NetworkingHelper(this.url);
  final String url;
  Future getData() async {
    Http.Response response = await Http.get(Uri.parse(url));
    // print(response.statusCode);
    // print(response.body);
    if (response.statusCode == 200) {
      String data = response.body;
      // // print(data);
      // var decodedData = jsonDecode(data);
      // double temp = decodedData['main']['temp'];
      // int id = decodedData['weather'][0]['id'];
      // String cityName = decodedData(data)['name'];
      // print(temp);
      // print(id);
      // print(cityName);
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}

import 'package:http/http.dart' as http;
import 'dart:convert'as convert;

class NetworkHelper{
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    if(response.statusCode == 200){
      return convert.jsonDecode(response.body);
    }else{
      print(response.statusCode);
    }
  }

}

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<String> getFortune() async {
  // Here is the url for the fortune API
  const String url = "http://yerkee.com/api/fortune/wisdom";
  // http.get takes in a Uri object so we make it
  Uri uri = Uri.parse(url);
  http.Response response = await http.get(uri);

  if (response.statusCode != 200) {
    return "Try again";
  } else {
    Map<String, dynamic> json = convert.jsonDecode(response.body);
    return json["fortune"];
  }
}
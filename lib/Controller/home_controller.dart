import 'dart:convert';

import 'package:apiintergration/Controller/usermodel.dart';
import 'package:http/http.dart' as http;

getusers() async {
  var userdata = [];
  var baseUrl = 'https://jsonplaceholder.typicode.com/users';
  var url = Uri.parse(baseUrl);
  var res = await http.get(url);
  print(res.statusCode);
  var jsonRes = jsonDecode(res.body);
  print(res.body);
  for (var i in jsonRes) {
    userdata.add(UserModel.fromJson(i));
  }

  return userdata;
}

// ________________________Second selected code
getuserid(id) async {
  var baseUrl = "https://jsonplaceholder.typicode.com/users/$id";
  var url = Uri.parse(baseUrl);
  var res = await http.get(url);

  var jsonRes = jsonDecode(res.body);

  return UserModel.fromJson(jsonRes);
}

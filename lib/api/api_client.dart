import 'dart:convert';

import 'package:http/http.dart';

var BaseUrl = 'http://116.68.206.157:9445/api';

var RequestHeader = {"Content-Type": "application/json"};

Future<bool> LoginRequest(Formvalues) async {
  var URL = Uri.parse("$BaseUrl/login");
  var Postbody = json.encode(Formvalues);
  var Response = await post(URL, headers: RequestHeader, body: Postbody);
  var Resultcode = Response.statusCode;
  var Resultbody = json.decode(Response.body);
  if (Resultcode == 200 && Resultbody['status'] == "success") {
    print('true');
    return true;
  } else {
    print('false');
    return false;
  }
}

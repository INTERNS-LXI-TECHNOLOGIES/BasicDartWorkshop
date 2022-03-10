import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'recharge.dart';

Future<void> getRecharge({required int amount}) async {
  var url = Uri.parse(
      'http://planapi.in/api/Mobile/RofferCheck?apimember_id=4306&api_password=ajil@123&mobile_no=9656240099&operator_code=23');

  var _response = await http.get(url);
  final _json = jsonDecode(_response.body) as Map<String, dynamic>;
  print(_json);
}

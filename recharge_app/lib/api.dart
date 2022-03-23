// ignore_for_file: prefer_typing_uninitialized_variables, unnecessary_getters_setters

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recharge_app/model/api_response/api_response.dart';
import 'recharge.dart';

class Api {
  //String?
  var _number;

  get number => _number;

  set number(number) {
    _number = number;
  }

  Future<ApiResponse> getRecharge({required int opCode}) async {
    String? rNumber;
    if (number.length > 10) {
      rNumber = number.substring(3);
    } else if (number.length == 10) {
      rNumber = number;
    } else {
      rNumber = null;
    }

    var url = Uri.parse(
        //'http://planapi.in/api/Mobile/RofferCheck?apimember_id=4306&api_password=ajil@123&mobile_no=$rNumber&operator_code=$opCode');
        'http://planapi.in/api/Mobile/Operatorplan?apimember_id=4306&api_password=ajil@123&cricle=95&operatorcode=23');

    var _response = await http.get(url);
    final _json = jsonDecode(_response.body) as Map<String, dynamic>;

    final _offers = ApiResponse.fromJson(_json);
    return _offers;
  }
}

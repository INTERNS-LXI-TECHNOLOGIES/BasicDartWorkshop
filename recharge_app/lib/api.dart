// ignore_for_file: prefer_typing_uninitialized_variables, unnecessary_getters_setters

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recharge_app/model/recharge_response.dart';
import 'recharge.dart';

class Api {
  //String?
  var _number;

  get number => _number;

  set number(number) {
    _number = number;
  }

  Future<RechargeResponse> getRecharge(
      {required int opCode, required String number}) async {
    String? rNumber;
    if (number.length > 10) {
      rNumber = number.substring(3);
    } else if (number.length == 10) {
      rNumber = number;
    } else {
      rNumber = null;
    }

    var url = Uri.parse(
        'http://planapi.in/api/Mobile/RofferCheck?apimember_id=4306&api_password=ajil@123&mobile_no=$rNumber&operator_code=$opCode');

    var _response = await http.get(url);
    final _json = jsonDecode(_response.body) as Map<String, dynamic>;

    final _offers = RechargeResponse.fromJson(_json);
    return _offers;
  }
}

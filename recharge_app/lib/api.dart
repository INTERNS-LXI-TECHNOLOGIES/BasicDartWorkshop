import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recharge_app/model/recharge_response.dart';
import 'recharge.dart';

class Api {
  String? _mNumber;

  setNumber(String number) {
    _mNumber = number;
  }

  String getNumber() {
    return _mNumber!;
  }

  Future<RechargeResponse> getRecharge({required int opCode}) async {
    print(getNumber());
    var url = Uri.parse(
        'http://planapi.in/api/Mobile/RofferCheck?apimember_id=4306&api_password=ajil@123&mobile_no=${getNumber()}&operator_code=$opCode');

    var _response = await http.get(url);
    final _json = jsonDecode(_response.body) as Map<String, dynamic>;
    //print(_json);
    final _offers = RechargeResponse.fromJson(_json);
    return _offers;
  }
}

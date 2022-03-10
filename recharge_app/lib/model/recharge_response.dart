// To parse this JSON data, do
//
//     final rechargeResponse = rechargeResponseFromJson(jsonString);

import 'dart:convert';

RechargeResponse rechargeResponseFromJson(String str) =>
    RechargeResponse.fromJson(json.decode(str));

String rechargeResponseToJson(RechargeResponse data) =>
    json.encode(data.toJson());

class RechargeResponse {
  RechargeResponse({
    this.error,
    this.status,
    this.mobileno,
    this.rdata,
    this.message,
  });

  String? error;
  String? status;
  String? mobileno;
  List<Rdatum>? rdata;
  String? message;

  factory RechargeResponse.fromJson(Map<String, dynamic> json) =>
      RechargeResponse(
        error: json["ERROR"],
        status: json["STATUS"],
        mobileno: json["MOBILENO"],
        rdata: List<Rdatum>.from(json["RDATA"].map((x) => Rdatum.fromJson(x))),
        message: json["MESSAGE"],
      );

  Map<String, dynamic> toJson() => {
        "ERROR": error,
        "STATUS": status,
        "MOBILENO": mobileno,
        "RDATA": List<dynamic>.from(rdata!.map((x) => x.toJson())),
        "MESSAGE": message,
      };
}

class Rdatum {
  Rdatum({
    this.price,
    this.commissionUnit,
    this.ofrtext,
    this.logdesc,
    this.commissionAmount,
    this.validity,
  });

  String? price;
  String? commissionUnit;
  String? ofrtext;
  String? logdesc;
  String? commissionAmount;
  String? validity;

  factory Rdatum.fromJson(Map<String, dynamic> json) => Rdatum(
        price: json["price"],
        commissionUnit: json["commissionUnit"],
        ofrtext: json["ofrtext"],
        logdesc: json["logdesc"],
        commissionAmount: json["commissionAmount"],
        validity: json["validity"],
      );

  Map<String, dynamic> toJson() => {
        "price": price,
        "commissionUnit": commissionUnit,
        "ofrtext": ofrtext,
        "logdesc": logdesc,
        "commissionAmount": commissionAmount,
        "validity": validity,
      };
}

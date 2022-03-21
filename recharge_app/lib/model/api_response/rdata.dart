import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'frc.dart';
import 'fulltt.dart';
import 'stv.dart';
import 'topup.dart';

part 'rdata.g.dart';

@JsonSerializable()
class Rdata {
  @JsonKey(name: 'FULLTT')
  List<Fulltt>? fulltt;
  @JsonKey(name: 'TOPUP')
  List<Topup>? topup;
  @JsonKey(name: 'DATA')
  List<Datum>? data;
  @JsonKey(name: 'SMS')
  dynamic sms;
  @JsonKey(name: 'Romaing')
  dynamic romaing;
  @JsonKey(name: 'FRC')
  List<Frc>? frc;
  @JsonKey(name: 'STV')
  List<Stv>? stv;

  Rdata({
    this.fulltt,
    this.topup,
    this.data,
    this.sms,
    this.romaing,
    this.frc,
    this.stv,
  });

  factory Rdata.fromJson(Map<String, dynamic> json) => _$RdataFromJson(json);

  Map<String, dynamic> toJson() => _$RdataToJson(this);
}

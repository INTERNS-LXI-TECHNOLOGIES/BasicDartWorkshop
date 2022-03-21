import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  int? rs;
  String? validity;
  String? desc;
  @JsonKey(name: 'Type')
  String? type;

  Datum({this.rs, this.validity, this.desc, this.type});

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

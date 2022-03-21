import 'package:json_annotation/json_annotation.dart';

part 'stv.g.dart';

@JsonSerializable()
class Stv {
  int? rs;
  String? validity;
  String? desc;
  @JsonKey(name: 'Type')
  String? type;

  Stv({this.rs, this.validity, this.desc, this.type});

  factory Stv.fromJson(Map<String, dynamic> json) => _$StvFromJson(json);

  Map<String, dynamic> toJson() => _$StvToJson(this);
}

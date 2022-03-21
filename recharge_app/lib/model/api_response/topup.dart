import 'package:json_annotation/json_annotation.dart';

part 'topup.g.dart';

@JsonSerializable()
class Topup {
  int? rs;
  String? validity;
  String? desc;
  @JsonKey(name: 'Type')
  String? type;

  Topup({this.rs, this.validity, this.desc, this.type});

  factory Topup.fromJson(Map<String, dynamic> json) => _$TopupFromJson(json);

  Map<String, dynamic> toJson() => _$TopupToJson(this);
}

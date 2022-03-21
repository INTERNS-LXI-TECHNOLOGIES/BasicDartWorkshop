import 'package:json_annotation/json_annotation.dart';

part 'frc.g.dart';

@JsonSerializable()
class Frc {
  int? rs;
  String? validity;
  String? desc;
  @JsonKey(name: 'Type')
  String? type;

  Frc({this.rs, this.validity, this.desc, this.type});

  factory Frc.fromJson(Map<String, dynamic> json) => _$FrcFromJson(json);

  Map<String, dynamic> toJson() => _$FrcToJson(this);
}

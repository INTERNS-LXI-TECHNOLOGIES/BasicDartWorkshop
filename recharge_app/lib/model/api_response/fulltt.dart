import 'package:json_annotation/json_annotation.dart';

part 'fulltt.g.dart';

@JsonSerializable()
class Fulltt {
  int? rs;
  String? validity;
  String? desc;
  @JsonKey(name: 'Type')
  String? type;

  Fulltt({this.rs, this.validity, this.desc, this.type});

  factory Fulltt.fromJson(Map<String, dynamic> json) {
    return _$FullttFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FullttToJson(this);
}

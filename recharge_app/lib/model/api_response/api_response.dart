import 'package:json_annotation/json_annotation.dart';

import 'rdata.dart';

part 'api_response.g.dart';

@JsonSerializable()
class ApiResponse {
  @JsonKey(name: 'ERROR')
  String? error;
  @JsonKey(name: 'STATUS')
  String? status;
  @JsonKey(name: 'Operator')
  String? operator;
  @JsonKey(name: 'Circle')
  String? circle;
  @JsonKey(name: 'RDATA')
  Rdata? rdata;
  @JsonKey(name: 'MESSAGE')
  String? message;

  ApiResponse({
    this.error,
    this.status,
    this.operator,
    this.circle,
    this.rdata,
    this.message,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return _$ApiResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}

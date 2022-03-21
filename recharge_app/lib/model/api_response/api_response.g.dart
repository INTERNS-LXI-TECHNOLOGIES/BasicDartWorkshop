// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) => ApiResponse(
      error: json['ERROR'] as String?,
      status: json['STATUS'] as String?,
      operator: json['Operator'] as String?,
      circle: json['Circle'] as String?,
      rdata: json['RDATA'] == null
          ? null
          : Rdata.fromJson(json['RDATA'] as Map<String, dynamic>),
      message: json['MESSAGE'] as String?,
    );

Map<String, dynamic> _$ApiResponseToJson(ApiResponse instance) =>
    <String, dynamic>{
      'ERROR': instance.error,
      'STATUS': instance.status,
      'Operator': instance.operator,
      'Circle': instance.circle,
      'RDATA': instance.rdata,
      'MESSAGE': instance.message,
    };

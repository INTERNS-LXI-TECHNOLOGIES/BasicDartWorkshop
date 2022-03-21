// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Topup _$TopupFromJson(Map<String, dynamic> json) => Topup(
      rs: json['rs'] as int?,
      validity: json['validity'] as String?,
      desc: json['desc'] as String?,
      type: json['Type'] as String?,
    );

Map<String, dynamic> _$TopupToJson(Topup instance) => <String, dynamic>{
      'rs': instance.rs,
      'validity': instance.validity,
      'desc': instance.desc,
      'Type': instance.type,
    };

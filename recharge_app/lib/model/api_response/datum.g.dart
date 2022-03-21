// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      rs: json['rs'] as int?,
      validity: json['validity'] as String?,
      desc: json['desc'] as String?,
      type: json['Type'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'rs': instance.rs,
      'validity': instance.validity,
      'desc': instance.desc,
      'Type': instance.type,
    };

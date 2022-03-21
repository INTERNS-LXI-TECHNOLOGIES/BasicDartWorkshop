// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stv.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Stv _$StvFromJson(Map<String, dynamic> json) => Stv(
      rs: json['rs'] as int?,
      validity: json['validity'] as String?,
      desc: json['desc'] as String?,
      type: json['Type'] as String?,
    );

Map<String, dynamic> _$StvToJson(Stv instance) => <String, dynamic>{
      'rs': instance.rs,
      'validity': instance.validity,
      'desc': instance.desc,
      'Type': instance.type,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Frc _$FrcFromJson(Map<String, dynamic> json) => Frc(
      rs: json['rs'] as int?,
      validity: json['validity'] as String?,
      desc: json['desc'] as String?,
      type: json['Type'] as String?,
    );

Map<String, dynamic> _$FrcToJson(Frc instance) => <String, dynamic>{
      'rs': instance.rs,
      'validity': instance.validity,
      'desc': instance.desc,
      'Type': instance.type,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rdata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rdata _$RdataFromJson(Map<String, dynamic> json) => Rdata(
      fulltt: (json['FULLTT'] as List<dynamic>?)
          ?.map((e) => Fulltt.fromJson(e as Map<String, dynamic>))
          .toList(),
      topup: (json['TOPUP'] as List<dynamic>?)
          ?.map((e) => Topup.fromJson(e as Map<String, dynamic>))
          .toList(),
      data: (json['DATA'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      sms: json['SMS'],
      romaing: json['Romaing'],
      frc: (json['FRC'] as List<dynamic>?)
          ?.map((e) => Frc.fromJson(e as Map<String, dynamic>))
          .toList(),
      stv: (json['STV'] as List<dynamic>?)
          ?.map((e) => Stv.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RdataToJson(Rdata instance) => <String, dynamic>{
      'FULLTT': instance.fulltt,
      'TOPUP': instance.topup,
      'DATA': instance.data,
      'SMS': instance.sms,
      'Romaing': instance.romaing,
      'FRC': instance.frc,
      'STV': instance.stv,
    };

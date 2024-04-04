// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'idol.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IdolImpl _$$IdolImplFromJson(Map<String, dynamic> json) => _$IdolImpl(
      id: json['id'] as int,
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      subTitle: json['subTitle'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$IdolImplToJson(_$IdolImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'description': instance.description,
    };

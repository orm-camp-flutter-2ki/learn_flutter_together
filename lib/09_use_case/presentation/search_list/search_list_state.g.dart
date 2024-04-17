// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchListStateImpl _$$SearchListStateImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchListStateImpl(
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$SearchListStateImplToJson(
        _$SearchListStateImpl instance) =>
    <String, dynamic>{
      'photos': instance.photos,
      'isLoading': instance.isLoading,
    };

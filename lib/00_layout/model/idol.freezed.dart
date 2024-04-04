// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'idol.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Idol _$IdolFromJson(Map<String, dynamic> json) {
  return _Idol.fromJson(json);
}

/// @nodoc
mixin _$Idol {
  int get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdolCopyWith<Idol> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdolCopyWith<$Res> {
  factory $IdolCopyWith(Idol value, $Res Function(Idol) then) =
      _$IdolCopyWithImpl<$Res, Idol>;
  @useResult
  $Res call(
      {int id,
      String imageUrl,
      String title,
      String subTitle,
      String description});
}

/// @nodoc
class _$IdolCopyWithImpl<$Res, $Val extends Idol>
    implements $IdolCopyWith<$Res> {
  _$IdolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? title = null,
    Object? subTitle = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdolImplCopyWith<$Res> implements $IdolCopyWith<$Res> {
  factory _$$IdolImplCopyWith(
          _$IdolImpl value, $Res Function(_$IdolImpl) then) =
      __$$IdolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String imageUrl,
      String title,
      String subTitle,
      String description});
}

/// @nodoc
class __$$IdolImplCopyWithImpl<$Res>
    extends _$IdolCopyWithImpl<$Res, _$IdolImpl>
    implements _$$IdolImplCopyWith<$Res> {
  __$$IdolImplCopyWithImpl(_$IdolImpl _value, $Res Function(_$IdolImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? title = null,
    Object? subTitle = null,
    Object? description = null,
  }) {
    return _then(_$IdolImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdolImpl implements _Idol {
  const _$IdolImpl(
      {required this.id,
      required this.imageUrl,
      required this.title,
      required this.subTitle,
      required this.description});

  factory _$IdolImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdolImplFromJson(json);

  @override
  final int id;
  @override
  final String imageUrl;
  @override
  final String title;
  @override
  final String subTitle;
  @override
  final String description;

  @override
  String toString() {
    return 'Idol(id: $id, imageUrl: $imageUrl, title: $title, subTitle: $subTitle, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdolImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, imageUrl, title, subTitle, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdolImplCopyWith<_$IdolImpl> get copyWith =>
      __$$IdolImplCopyWithImpl<_$IdolImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdolImplToJson(
      this,
    );
  }
}

abstract class _Idol implements Idol {
  const factory _Idol(
      {required final int id,
      required final String imageUrl,
      required final String title,
      required final String subTitle,
      required final String description}) = _$IdolImpl;

  factory _Idol.fromJson(Map<String, dynamic> json) = _$IdolImpl.fromJson;

  @override
  int get id;
  @override
  String get imageUrl;
  @override
  String get title;
  @override
  String get subTitle;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$IdolImplCopyWith<_$IdolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

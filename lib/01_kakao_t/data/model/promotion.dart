import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion.freezed.dart';

@freezed
class Promotion with _$Promotion {
  const factory Promotion({
    required String title,
    required String subtitle,
    required String imageUrl,
    required Color color,
  }) = _Promotion;
}

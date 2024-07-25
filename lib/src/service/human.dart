import 'package:freezed_annotation/freezed_annotation.dart';

part 'human.freezed.dart';
part 'human.g.dart';

@freezed
class Human with _$Human {
  factory Human({
    required int id,
    required String name,
  }) = _Human;

  factory Human.fromJson(Map<String, dynamic> json) => _$HumanFromJson(json);
}

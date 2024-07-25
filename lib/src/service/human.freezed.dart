// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'human.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Human _$HumanFromJson(Map<String, dynamic> json) {
  return _Human.fromJson(json);
}

/// @nodoc
mixin _$Human {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Human to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Human
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HumanCopyWith<Human> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HumanCopyWith<$Res> {
  factory $HumanCopyWith(Human value, $Res Function(Human) then) =
      _$HumanCopyWithImpl<$Res, Human>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$HumanCopyWithImpl<$Res, $Val extends Human>
    implements $HumanCopyWith<$Res> {
  _$HumanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Human
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HumanImplCopyWith<$Res> implements $HumanCopyWith<$Res> {
  factory _$$HumanImplCopyWith(
          _$HumanImpl value, $Res Function(_$HumanImpl) then) =
      __$$HumanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$HumanImplCopyWithImpl<$Res>
    extends _$HumanCopyWithImpl<$Res, _$HumanImpl>
    implements _$$HumanImplCopyWith<$Res> {
  __$$HumanImplCopyWithImpl(
      _$HumanImpl _value, $Res Function(_$HumanImpl) _then)
      : super(_value, _then);

  /// Create a copy of Human
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$HumanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HumanImpl implements _Human {
  _$HumanImpl({required this.id, required this.name});

  factory _$HumanImpl.fromJson(Map<String, dynamic> json) =>
      _$$HumanImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Human(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HumanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Human
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HumanImplCopyWith<_$HumanImpl> get copyWith =>
      __$$HumanImplCopyWithImpl<_$HumanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HumanImplToJson(
      this,
    );
  }
}

abstract class _Human implements Human {
  factory _Human({required final int id, required final String name}) =
      _$HumanImpl;

  factory _Human.fromJson(Map<String, dynamic> json) = _$HumanImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of Human
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HumanImplCopyWith<_$HumanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dependency_tutorial_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DependencyTutorialModelTearOff {
  const _$DependencyTutorialModelTearOff();

  _DependencyTutorialModel call(
      {required String title,
      required String id,
      required String desctiption}) {
    return _DependencyTutorialModel(
      title: title,
      id: id,
      desctiption: desctiption,
    );
  }
}

/// @nodoc
const $DependencyTutorialModel = _$DependencyTutorialModelTearOff();

/// @nodoc
mixin _$DependencyTutorialModel {
  String get title => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get desctiption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DependencyTutorialModelCopyWith<DependencyTutorialModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DependencyTutorialModelCopyWith<$Res> {
  factory $DependencyTutorialModelCopyWith(DependencyTutorialModel value,
          $Res Function(DependencyTutorialModel) then) =
      _$DependencyTutorialModelCopyWithImpl<$Res>;
  $Res call({String title, String id, String desctiption});
}

/// @nodoc
class _$DependencyTutorialModelCopyWithImpl<$Res>
    implements $DependencyTutorialModelCopyWith<$Res> {
  _$DependencyTutorialModelCopyWithImpl(this._value, this._then);

  final DependencyTutorialModel _value;
  // ignore: unused_field
  final $Res Function(DependencyTutorialModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
    Object? desctiption = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      desctiption: desctiption == freezed
          ? _value.desctiption
          : desctiption // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DependencyTutorialModelCopyWith<$Res>
    implements $DependencyTutorialModelCopyWith<$Res> {
  factory _$DependencyTutorialModelCopyWith(_DependencyTutorialModel value,
          $Res Function(_DependencyTutorialModel) then) =
      __$DependencyTutorialModelCopyWithImpl<$Res>;
  @override
  $Res call({String title, String id, String desctiption});
}

/// @nodoc
class __$DependencyTutorialModelCopyWithImpl<$Res>
    extends _$DependencyTutorialModelCopyWithImpl<$Res>
    implements _$DependencyTutorialModelCopyWith<$Res> {
  __$DependencyTutorialModelCopyWithImpl(_DependencyTutorialModel _value,
      $Res Function(_DependencyTutorialModel) _then)
      : super(_value, (v) => _then(v as _DependencyTutorialModel));

  @override
  _DependencyTutorialModel get _value =>
      super._value as _DependencyTutorialModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
    Object? desctiption = freezed,
  }) {
    return _then(_DependencyTutorialModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      desctiption: desctiption == freezed
          ? _value.desctiption
          : desctiption // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DependencyTutorialModel implements _DependencyTutorialModel {
  const _$_DependencyTutorialModel(
      {required this.title, required this.id, required this.desctiption});

  @override
  final String title;
  @override
  final String id;
  @override
  final String desctiption;

  @override
  String toString() {
    return 'DependencyTutorialModel(title: $title, id: $id, desctiption: $desctiption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DependencyTutorialModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.desctiption, desctiption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(desctiption));

  @JsonKey(ignore: true)
  @override
  _$DependencyTutorialModelCopyWith<_DependencyTutorialModel> get copyWith =>
      __$DependencyTutorialModelCopyWithImpl<_DependencyTutorialModel>(
          this, _$identity);
}

abstract class _DependencyTutorialModel implements DependencyTutorialModel {
  const factory _DependencyTutorialModel(
      {required String title,
      required String id,
      required String desctiption}) = _$_DependencyTutorialModel;

  @override
  String get title;
  @override
  String get id;
  @override
  String get desctiption;
  @override
  @JsonKey(ignore: true)
  _$DependencyTutorialModelCopyWith<_DependencyTutorialModel> get copyWith =>
      throw _privateConstructorUsedError;
}

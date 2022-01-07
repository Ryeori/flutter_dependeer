// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_dependency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProjectDependencyModelTearOff {
  const _$ProjectDependencyModelTearOff();

  _ProjectDependencyModel call(
      {required String name,
      required String version,
      required ProjectDependencyModelType type}) {
    return _ProjectDependencyModel(
      name: name,
      version: version,
      type: type,
    );
  }
}

/// @nodoc
const $ProjectDependencyModel = _$ProjectDependencyModelTearOff();

/// @nodoc
mixin _$ProjectDependencyModel {
  String get name => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  ProjectDependencyModelType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectDependencyModelCopyWith<ProjectDependencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDependencyModelCopyWith<$Res> {
  factory $ProjectDependencyModelCopyWith(ProjectDependencyModel value,
          $Res Function(ProjectDependencyModel) then) =
      _$ProjectDependencyModelCopyWithImpl<$Res>;
  $Res call({String name, String version, ProjectDependencyModelType type});
}

/// @nodoc
class _$ProjectDependencyModelCopyWithImpl<$Res>
    implements $ProjectDependencyModelCopyWith<$Res> {
  _$ProjectDependencyModelCopyWithImpl(this._value, this._then);

  final ProjectDependencyModel _value;
  // ignore: unused_field
  final $Res Function(ProjectDependencyModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? version = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProjectDependencyModelType,
    ));
  }
}

/// @nodoc
abstract class _$ProjectDependencyModelCopyWith<$Res>
    implements $ProjectDependencyModelCopyWith<$Res> {
  factory _$ProjectDependencyModelCopyWith(_ProjectDependencyModel value,
          $Res Function(_ProjectDependencyModel) then) =
      __$ProjectDependencyModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String version, ProjectDependencyModelType type});
}

/// @nodoc
class __$ProjectDependencyModelCopyWithImpl<$Res>
    extends _$ProjectDependencyModelCopyWithImpl<$Res>
    implements _$ProjectDependencyModelCopyWith<$Res> {
  __$ProjectDependencyModelCopyWithImpl(_ProjectDependencyModel _value,
      $Res Function(_ProjectDependencyModel) _then)
      : super(_value, (v) => _then(v as _ProjectDependencyModel));

  @override
  _ProjectDependencyModel get _value => super._value as _ProjectDependencyModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? version = freezed,
    Object? type = freezed,
  }) {
    return _then(_ProjectDependencyModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProjectDependencyModelType,
    ));
  }
}

/// @nodoc

class _$_ProjectDependencyModel implements _ProjectDependencyModel {
  const _$_ProjectDependencyModel(
      {required this.name, required this.version, required this.type});

  @override
  final String name;
  @override
  final String version;
  @override
  final ProjectDependencyModelType type;

  @override
  String toString() {
    return 'ProjectDependencyModel(name: $name, version: $version, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProjectDependencyModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$ProjectDependencyModelCopyWith<_ProjectDependencyModel> get copyWith =>
      __$ProjectDependencyModelCopyWithImpl<_ProjectDependencyModel>(
          this, _$identity);
}

abstract class _ProjectDependencyModel implements ProjectDependencyModel {
  const factory _ProjectDependencyModel(
      {required String name,
      required String version,
      required ProjectDependencyModelType type}) = _$_ProjectDependencyModel;

  @override
  String get name;
  @override
  String get version;
  @override
  ProjectDependencyModelType get type;
  @override
  @JsonKey(ignore: true)
  _$ProjectDependencyModelCopyWith<_ProjectDependencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

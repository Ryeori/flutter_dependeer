// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pubspecyaml_dto_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PubspecyamlDtoModel _$PubspecyamlDtoModelFromJson(Map<String, dynamic> json) {
  return _PubspecyamlDtoModel.fromJson(json);
}

/// @nodoc
class _$PubspecyamlDtoModelTearOff {
  const _$PubspecyamlDtoModelTearOff();

  _PubspecyamlDtoModel call(
      {required String name,
      required String description,
      required String version,
      required Environment environment,
      required Map<String, dynamic> dependencies,
      @JsonKey(name: 'dev_dependencies')
          required Map<String, dynamic> devDependencies}) {
    return _PubspecyamlDtoModel(
      name: name,
      description: description,
      version: version,
      environment: environment,
      dependencies: dependencies,
      devDependencies: devDependencies,
    );
  }

  PubspecyamlDtoModel fromJson(Map<String, Object?> json) {
    return PubspecyamlDtoModel.fromJson(json);
  }
}

/// @nodoc
const $PubspecyamlDtoModel = _$PubspecyamlDtoModelTearOff();

/// @nodoc
mixin _$PubspecyamlDtoModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  Environment get environment => throw _privateConstructorUsedError;
  Map<String, dynamic> get dependencies => throw _privateConstructorUsedError;
  @JsonKey(name: 'dev_dependencies')
  Map<String, dynamic> get devDependencies =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PubspecyamlDtoModelCopyWith<PubspecyamlDtoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PubspecyamlDtoModelCopyWith<$Res> {
  factory $PubspecyamlDtoModelCopyWith(
          PubspecyamlDtoModel value, $Res Function(PubspecyamlDtoModel) then) =
      _$PubspecyamlDtoModelCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String description,
      String version,
      Environment environment,
      Map<String, dynamic> dependencies,
      @JsonKey(name: 'dev_dependencies') Map<String, dynamic> devDependencies});

  $EnvironmentCopyWith<$Res> get environment;
}

/// @nodoc
class _$PubspecyamlDtoModelCopyWithImpl<$Res>
    implements $PubspecyamlDtoModelCopyWith<$Res> {
  _$PubspecyamlDtoModelCopyWithImpl(this._value, this._then);

  final PubspecyamlDtoModel _value;
  // ignore: unused_field
  final $Res Function(PubspecyamlDtoModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? version = freezed,
    Object? environment = freezed,
    Object? dependencies = freezed,
    Object? devDependencies = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      environment: environment == freezed
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Environment,
      dependencies: dependencies == freezed
          ? _value.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      devDependencies: devDependencies == freezed
          ? _value.devDependencies
          : devDependencies // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }

  @override
  $EnvironmentCopyWith<$Res> get environment {
    return $EnvironmentCopyWith<$Res>(_value.environment, (value) {
      return _then(_value.copyWith(environment: value));
    });
  }
}

/// @nodoc
abstract class _$PubspecyamlDtoModelCopyWith<$Res>
    implements $PubspecyamlDtoModelCopyWith<$Res> {
  factory _$PubspecyamlDtoModelCopyWith(_PubspecyamlDtoModel value,
          $Res Function(_PubspecyamlDtoModel) then) =
      __$PubspecyamlDtoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String description,
      String version,
      Environment environment,
      Map<String, dynamic> dependencies,
      @JsonKey(name: 'dev_dependencies') Map<String, dynamic> devDependencies});

  @override
  $EnvironmentCopyWith<$Res> get environment;
}

/// @nodoc
class __$PubspecyamlDtoModelCopyWithImpl<$Res>
    extends _$PubspecyamlDtoModelCopyWithImpl<$Res>
    implements _$PubspecyamlDtoModelCopyWith<$Res> {
  __$PubspecyamlDtoModelCopyWithImpl(
      _PubspecyamlDtoModel _value, $Res Function(_PubspecyamlDtoModel) _then)
      : super(_value, (v) => _then(v as _PubspecyamlDtoModel));

  @override
  _PubspecyamlDtoModel get _value => super._value as _PubspecyamlDtoModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? version = freezed,
    Object? environment = freezed,
    Object? dependencies = freezed,
    Object? devDependencies = freezed,
  }) {
    return _then(_PubspecyamlDtoModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      environment: environment == freezed
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Environment,
      dependencies: dependencies == freezed
          ? _value.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      devDependencies: devDependencies == freezed
          ? _value.devDependencies
          : devDependencies // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PubspecyamlDtoModel implements _PubspecyamlDtoModel {
  const _$_PubspecyamlDtoModel(
      {required this.name,
      required this.description,
      required this.version,
      required this.environment,
      required this.dependencies,
      @JsonKey(name: 'dev_dependencies') required this.devDependencies});

  factory _$_PubspecyamlDtoModel.fromJson(Map<String, dynamic> json) =>
      _$$_PubspecyamlDtoModelFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String version;
  @override
  final Environment environment;
  @override
  final Map<String, dynamic> dependencies;
  @override
  @JsonKey(name: 'dev_dependencies')
  final Map<String, dynamic> devDependencies;

  @override
  String toString() {
    return 'PubspecyamlDtoModel(name: $name, description: $description, version: $version, environment: $environment, dependencies: $dependencies, devDependencies: $devDependencies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PubspecyamlDtoModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality()
                .equals(other.environment, environment) &&
            const DeepCollectionEquality()
                .equals(other.dependencies, dependencies) &&
            const DeepCollectionEquality()
                .equals(other.devDependencies, devDependencies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(environment),
      const DeepCollectionEquality().hash(dependencies),
      const DeepCollectionEquality().hash(devDependencies));

  @JsonKey(ignore: true)
  @override
  _$PubspecyamlDtoModelCopyWith<_PubspecyamlDtoModel> get copyWith =>
      __$PubspecyamlDtoModelCopyWithImpl<_PubspecyamlDtoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PubspecyamlDtoModelToJson(this);
  }
}

abstract class _PubspecyamlDtoModel implements PubspecyamlDtoModel {
  const factory _PubspecyamlDtoModel(
          {required String name,
          required String description,
          required String version,
          required Environment environment,
          required Map<String, dynamic> dependencies,
          @JsonKey(name: 'dev_dependencies')
              required Map<String, dynamic> devDependencies}) =
      _$_PubspecyamlDtoModel;

  factory _PubspecyamlDtoModel.fromJson(Map<String, dynamic> json) =
      _$_PubspecyamlDtoModel.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get version;
  @override
  Environment get environment;
  @override
  Map<String, dynamic> get dependencies;
  @override
  @JsonKey(name: 'dev_dependencies')
  Map<String, dynamic> get devDependencies;
  @override
  @JsonKey(ignore: true)
  _$PubspecyamlDtoModelCopyWith<_PubspecyamlDtoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

YamlDependency _$YamlDependencyFromJson(Map<String, dynamic> json) {
  return _YamlDependency.fromJson(json);
}

/// @nodoc
class _$YamlDependencyTearOff {
  const _$YamlDependencyTearOff();

  _YamlDependency call({required String title, required String version}) {
    return _YamlDependency(
      title: title,
      version: version,
    );
  }

  YamlDependency fromJson(Map<String, Object?> json) {
    return YamlDependency.fromJson(json);
  }
}

/// @nodoc
const $YamlDependency = _$YamlDependencyTearOff();

/// @nodoc
mixin _$YamlDependency {
  String get title => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YamlDependencyCopyWith<YamlDependency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YamlDependencyCopyWith<$Res> {
  factory $YamlDependencyCopyWith(
          YamlDependency value, $Res Function(YamlDependency) then) =
      _$YamlDependencyCopyWithImpl<$Res>;
  $Res call({String title, String version});
}

/// @nodoc
class _$YamlDependencyCopyWithImpl<$Res>
    implements $YamlDependencyCopyWith<$Res> {
  _$YamlDependencyCopyWithImpl(this._value, this._then);

  final YamlDependency _value;
  // ignore: unused_field
  final $Res Function(YamlDependency) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$YamlDependencyCopyWith<$Res>
    implements $YamlDependencyCopyWith<$Res> {
  factory _$YamlDependencyCopyWith(
          _YamlDependency value, $Res Function(_YamlDependency) then) =
      __$YamlDependencyCopyWithImpl<$Res>;
  @override
  $Res call({String title, String version});
}

/// @nodoc
class __$YamlDependencyCopyWithImpl<$Res>
    extends _$YamlDependencyCopyWithImpl<$Res>
    implements _$YamlDependencyCopyWith<$Res> {
  __$YamlDependencyCopyWithImpl(
      _YamlDependency _value, $Res Function(_YamlDependency) _then)
      : super(_value, (v) => _then(v as _YamlDependency));

  @override
  _YamlDependency get _value => super._value as _YamlDependency;

  @override
  $Res call({
    Object? title = freezed,
    Object? version = freezed,
  }) {
    return _then(_YamlDependency(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YamlDependency implements _YamlDependency {
  const _$_YamlDependency({required this.title, required this.version});

  factory _$_YamlDependency.fromJson(Map<String, dynamic> json) =>
      _$$_YamlDependencyFromJson(json);

  @override
  final String title;
  @override
  final String version;

  @override
  String toString() {
    return 'YamlDependency(title: $title, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _YamlDependency &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$YamlDependencyCopyWith<_YamlDependency> get copyWith =>
      __$YamlDependencyCopyWithImpl<_YamlDependency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YamlDependencyToJson(this);
  }
}

abstract class _YamlDependency implements YamlDependency {
  const factory _YamlDependency(
      {required String title, required String version}) = _$_YamlDependency;

  factory _YamlDependency.fromJson(Map<String, dynamic> json) =
      _$_YamlDependency.fromJson;

  @override
  String get title;
  @override
  String get version;
  @override
  @JsonKey(ignore: true)
  _$YamlDependencyCopyWith<_YamlDependency> get copyWith =>
      throw _privateConstructorUsedError;
}

Environment _$EnvironmentFromJson(Map<String, dynamic> json) {
  return _Environment.fromJson(json);
}

/// @nodoc
class _$EnvironmentTearOff {
  const _$EnvironmentTearOff();

  _Environment call({required String sdk}) {
    return _Environment(
      sdk: sdk,
    );
  }

  Environment fromJson(Map<String, Object?> json) {
    return Environment.fromJson(json);
  }
}

/// @nodoc
const $Environment = _$EnvironmentTearOff();

/// @nodoc
mixin _$Environment {
  String get sdk => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnvironmentCopyWith<Environment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentCopyWith<$Res> {
  factory $EnvironmentCopyWith(
          Environment value, $Res Function(Environment) then) =
      _$EnvironmentCopyWithImpl<$Res>;
  $Res call({String sdk});
}

/// @nodoc
class _$EnvironmentCopyWithImpl<$Res> implements $EnvironmentCopyWith<$Res> {
  _$EnvironmentCopyWithImpl(this._value, this._then);

  final Environment _value;
  // ignore: unused_field
  final $Res Function(Environment) _then;

  @override
  $Res call({
    Object? sdk = freezed,
  }) {
    return _then(_value.copyWith(
      sdk: sdk == freezed
          ? _value.sdk
          : sdk // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EnvironmentCopyWith<$Res>
    implements $EnvironmentCopyWith<$Res> {
  factory _$EnvironmentCopyWith(
          _Environment value, $Res Function(_Environment) then) =
      __$EnvironmentCopyWithImpl<$Res>;
  @override
  $Res call({String sdk});
}

/// @nodoc
class __$EnvironmentCopyWithImpl<$Res> extends _$EnvironmentCopyWithImpl<$Res>
    implements _$EnvironmentCopyWith<$Res> {
  __$EnvironmentCopyWithImpl(
      _Environment _value, $Res Function(_Environment) _then)
      : super(_value, (v) => _then(v as _Environment));

  @override
  _Environment get _value => super._value as _Environment;

  @override
  $Res call({
    Object? sdk = freezed,
  }) {
    return _then(_Environment(
      sdk: sdk == freezed
          ? _value.sdk
          : sdk // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Environment implements _Environment {
  const _$_Environment({required this.sdk});

  factory _$_Environment.fromJson(Map<String, dynamic> json) =>
      _$$_EnvironmentFromJson(json);

  @override
  final String sdk;

  @override
  String toString() {
    return 'Environment(sdk: $sdk)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Environment &&
            const DeepCollectionEquality().equals(other.sdk, sdk));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sdk));

  @JsonKey(ignore: true)
  @override
  _$EnvironmentCopyWith<_Environment> get copyWith =>
      __$EnvironmentCopyWithImpl<_Environment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EnvironmentToJson(this);
  }
}

abstract class _Environment implements Environment {
  const factory _Environment({required String sdk}) = _$_Environment;

  factory _Environment.fromJson(Map<String, dynamic> json) =
      _$_Environment.fromJson;

  @override
  String get sdk;
  @override
  @JsonKey(ignore: true)
  _$EnvironmentCopyWith<_Environment> get copyWith =>
      throw _privateConstructorUsedError;
}

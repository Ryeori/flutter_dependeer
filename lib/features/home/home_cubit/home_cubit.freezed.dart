// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ProjectDependenciesLoaded projectDependenciesLoaded(
      {required String projectPath, required PubspecyamlDtoModel pubspecyaml}) {
    return _ProjectDependenciesLoaded(
      projectPath: projectPath,
      pubspecyaml: pubspecyaml,
    );
  }

  _Error error({String errorTitle = '', String errorMessage = ''}) {
    return _Error(
      errorTitle: errorTitle,
      errorMessage: errorMessage,
    );
  }

  _Loading loading() {
    return const _Loading();
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String projectPath, PubspecyamlDtoModel pubspecyaml)
        projectDependenciesLoaded,
    required TResult Function(String errorTitle, String errorMessage) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String projectPath, PubspecyamlDtoModel pubspecyaml)?
        projectDependenciesLoaded,
    TResult Function(String errorTitle, String errorMessage)? error,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String projectPath, PubspecyamlDtoModel pubspecyaml)?
        projectDependenciesLoaded,
    TResult Function(String errorTitle, String errorMessage)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProjectDependenciesLoaded value)
        projectDependenciesLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectDependenciesLoaded value)?
        projectDependenciesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectDependenciesLoaded value)?
        projectDependenciesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String projectPath, PubspecyamlDtoModel pubspecyaml)
        projectDependenciesLoaded,
    required TResult Function(String errorTitle, String errorMessage) error,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String projectPath, PubspecyamlDtoModel pubspecyaml)?
        projectDependenciesLoaded,
    TResult Function(String errorTitle, String errorMessage)? error,
    TResult Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String projectPath, PubspecyamlDtoModel pubspecyaml)?
        projectDependenciesLoaded,
    TResult Function(String errorTitle, String errorMessage)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProjectDependenciesLoaded value)
        projectDependenciesLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectDependenciesLoaded value)?
        projectDependenciesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectDependenciesLoaded value)?
        projectDependenciesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ProjectDependenciesLoadedCopyWith<$Res> {
  factory _$ProjectDependenciesLoadedCopyWith(_ProjectDependenciesLoaded value,
          $Res Function(_ProjectDependenciesLoaded) then) =
      __$ProjectDependenciesLoadedCopyWithImpl<$Res>;
  $Res call({String projectPath, PubspecyamlDtoModel pubspecyaml});

  $PubspecyamlDtoModelCopyWith<$Res> get pubspecyaml;
}

/// @nodoc
class __$ProjectDependenciesLoadedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$ProjectDependenciesLoadedCopyWith<$Res> {
  __$ProjectDependenciesLoadedCopyWithImpl(_ProjectDependenciesLoaded _value,
      $Res Function(_ProjectDependenciesLoaded) _then)
      : super(_value, (v) => _then(v as _ProjectDependenciesLoaded));

  @override
  _ProjectDependenciesLoaded get _value =>
      super._value as _ProjectDependenciesLoaded;

  @override
  $Res call({
    Object? projectPath = freezed,
    Object? pubspecyaml = freezed,
  }) {
    return _then(_ProjectDependenciesLoaded(
      projectPath: projectPath == freezed
          ? _value.projectPath
          : projectPath // ignore: cast_nullable_to_non_nullable
              as String,
      pubspecyaml: pubspecyaml == freezed
          ? _value.pubspecyaml
          : pubspecyaml // ignore: cast_nullable_to_non_nullable
              as PubspecyamlDtoModel,
    ));
  }

  @override
  $PubspecyamlDtoModelCopyWith<$Res> get pubspecyaml {
    return $PubspecyamlDtoModelCopyWith<$Res>(_value.pubspecyaml, (value) {
      return _then(_value.copyWith(pubspecyaml: value));
    });
  }
}

/// @nodoc

class _$_ProjectDependenciesLoaded implements _ProjectDependenciesLoaded {
  const _$_ProjectDependenciesLoaded(
      {required this.projectPath, required this.pubspecyaml});

  @override
  final String projectPath;
  @override
  final PubspecyamlDtoModel pubspecyaml;

  @override
  String toString() {
    return 'HomeState.projectDependenciesLoaded(projectPath: $projectPath, pubspecyaml: $pubspecyaml)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProjectDependenciesLoaded &&
            const DeepCollectionEquality()
                .equals(other.projectPath, projectPath) &&
            const DeepCollectionEquality()
                .equals(other.pubspecyaml, pubspecyaml));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(projectPath),
      const DeepCollectionEquality().hash(pubspecyaml));

  @JsonKey(ignore: true)
  @override
  _$ProjectDependenciesLoadedCopyWith<_ProjectDependenciesLoaded>
      get copyWith =>
          __$ProjectDependenciesLoadedCopyWithImpl<_ProjectDependenciesLoaded>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String projectPath, PubspecyamlDtoModel pubspecyaml)
        projectDependenciesLoaded,
    required TResult Function(String errorTitle, String errorMessage) error,
    required TResult Function() loading,
  }) {
    return projectDependenciesLoaded(projectPath, pubspecyaml);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String projectPath, PubspecyamlDtoModel pubspecyaml)?
        projectDependenciesLoaded,
    TResult Function(String errorTitle, String errorMessage)? error,
    TResult Function()? loading,
  }) {
    return projectDependenciesLoaded?.call(projectPath, pubspecyaml);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String projectPath, PubspecyamlDtoModel pubspecyaml)?
        projectDependenciesLoaded,
    TResult Function(String errorTitle, String errorMessage)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (projectDependenciesLoaded != null) {
      return projectDependenciesLoaded(projectPath, pubspecyaml);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProjectDependenciesLoaded value)
        projectDependenciesLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
  }) {
    return projectDependenciesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectDependenciesLoaded value)?
        projectDependenciesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
  }) {
    return projectDependenciesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectDependenciesLoaded value)?
        projectDependenciesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (projectDependenciesLoaded != null) {
      return projectDependenciesLoaded(this);
    }
    return orElse();
  }
}

abstract class _ProjectDependenciesLoaded implements HomeState {
  const factory _ProjectDependenciesLoaded(
      {required String projectPath,
      required PubspecyamlDtoModel pubspecyaml}) = _$_ProjectDependenciesLoaded;

  String get projectPath;
  PubspecyamlDtoModel get pubspecyaml;
  @JsonKey(ignore: true)
  _$ProjectDependenciesLoadedCopyWith<_ProjectDependenciesLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String errorTitle, String errorMessage});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? errorTitle = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_Error(
      errorTitle: errorTitle == freezed
          ? _value.errorTitle
          : errorTitle // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({this.errorTitle = '', this.errorMessage = ''});

  @JsonKey()
  @override
  final String errorTitle;
  @JsonKey()
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'HomeState.error(errorTitle: $errorTitle, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality()
                .equals(other.errorTitle, errorTitle) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(errorTitle),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String projectPath, PubspecyamlDtoModel pubspecyaml)
        projectDependenciesLoaded,
    required TResult Function(String errorTitle, String errorMessage) error,
    required TResult Function() loading,
  }) {
    return error(errorTitle, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String projectPath, PubspecyamlDtoModel pubspecyaml)?
        projectDependenciesLoaded,
    TResult Function(String errorTitle, String errorMessage)? error,
    TResult Function()? loading,
  }) {
    return error?.call(errorTitle, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String projectPath, PubspecyamlDtoModel pubspecyaml)?
        projectDependenciesLoaded,
    TResult Function(String errorTitle, String errorMessage)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorTitle, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProjectDependenciesLoaded value)
        projectDependenciesLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectDependenciesLoaded value)?
        projectDependenciesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectDependenciesLoaded value)?
        projectDependenciesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HomeState {
  const factory _Error({String errorTitle, String errorMessage}) = _$_Error;

  String get errorTitle;
  String get errorMessage;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String projectPath, PubspecyamlDtoModel pubspecyaml)
        projectDependenciesLoaded,
    required TResult Function(String errorTitle, String errorMessage) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String projectPath, PubspecyamlDtoModel pubspecyaml)?
        projectDependenciesLoaded,
    TResult Function(String errorTitle, String errorMessage)? error,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String projectPath, PubspecyamlDtoModel pubspecyaml)?
        projectDependenciesLoaded,
    TResult Function(String errorTitle, String errorMessage)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProjectDependenciesLoaded value)
        projectDependenciesLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectDependenciesLoaded value)?
        projectDependenciesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProjectDependenciesLoaded value)?
        projectDependenciesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState {
  const factory _Loading() = _$_Loading;
}

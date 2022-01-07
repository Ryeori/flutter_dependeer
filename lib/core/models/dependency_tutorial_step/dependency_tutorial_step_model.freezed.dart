// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dependency_tutorial_step_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DependencyTutorialStepModelTearOff {
  const _$DependencyTutorialStepModelTearOff();

  _DependencyTutorialStepModel call(
      {required String title,
      required String stepDescription,
      required List<DependencyUserActionType> stepUserActions}) {
    return _DependencyTutorialStepModel(
      title: title,
      stepDescription: stepDescription,
      stepUserActions: stepUserActions,
    );
  }
}

/// @nodoc
const $DependencyTutorialStepModel = _$DependencyTutorialStepModelTearOff();

/// @nodoc
mixin _$DependencyTutorialStepModel {
  String get title => throw _privateConstructorUsedError;
  String get stepDescription => throw _privateConstructorUsedError;
  List<DependencyUserActionType> get stepUserActions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DependencyTutorialStepModelCopyWith<DependencyTutorialStepModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DependencyTutorialStepModelCopyWith<$Res> {
  factory $DependencyTutorialStepModelCopyWith(
          DependencyTutorialStepModel value,
          $Res Function(DependencyTutorialStepModel) then) =
      _$DependencyTutorialStepModelCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String stepDescription,
      List<DependencyUserActionType> stepUserActions});
}

/// @nodoc
class _$DependencyTutorialStepModelCopyWithImpl<$Res>
    implements $DependencyTutorialStepModelCopyWith<$Res> {
  _$DependencyTutorialStepModelCopyWithImpl(this._value, this._then);

  final DependencyTutorialStepModel _value;
  // ignore: unused_field
  final $Res Function(DependencyTutorialStepModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? stepDescription = freezed,
    Object? stepUserActions = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      stepDescription: stepDescription == freezed
          ? _value.stepDescription
          : stepDescription // ignore: cast_nullable_to_non_nullable
              as String,
      stepUserActions: stepUserActions == freezed
          ? _value.stepUserActions
          : stepUserActions // ignore: cast_nullable_to_non_nullable
              as List<DependencyUserActionType>,
    ));
  }
}

/// @nodoc
abstract class _$DependencyTutorialStepModelCopyWith<$Res>
    implements $DependencyTutorialStepModelCopyWith<$Res> {
  factory _$DependencyTutorialStepModelCopyWith(
          _DependencyTutorialStepModel value,
          $Res Function(_DependencyTutorialStepModel) then) =
      __$DependencyTutorialStepModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String stepDescription,
      List<DependencyUserActionType> stepUserActions});
}

/// @nodoc
class __$DependencyTutorialStepModelCopyWithImpl<$Res>
    extends _$DependencyTutorialStepModelCopyWithImpl<$Res>
    implements _$DependencyTutorialStepModelCopyWith<$Res> {
  __$DependencyTutorialStepModelCopyWithImpl(
      _DependencyTutorialStepModel _value,
      $Res Function(_DependencyTutorialStepModel) _then)
      : super(_value, (v) => _then(v as _DependencyTutorialStepModel));

  @override
  _DependencyTutorialStepModel get _value =>
      super._value as _DependencyTutorialStepModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? stepDescription = freezed,
    Object? stepUserActions = freezed,
  }) {
    return _then(_DependencyTutorialStepModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      stepDescription: stepDescription == freezed
          ? _value.stepDescription
          : stepDescription // ignore: cast_nullable_to_non_nullable
              as String,
      stepUserActions: stepUserActions == freezed
          ? _value.stepUserActions
          : stepUserActions // ignore: cast_nullable_to_non_nullable
              as List<DependencyUserActionType>,
    ));
  }
}

/// @nodoc

class _$_DependencyTutorialStepModel implements _DependencyTutorialStepModel {
  const _$_DependencyTutorialStepModel(
      {required this.title,
      required this.stepDescription,
      required this.stepUserActions});

  @override
  final String title;
  @override
  final String stepDescription;
  @override
  final List<DependencyUserActionType> stepUserActions;

  @override
  String toString() {
    return 'DependencyTutorialStepModel(title: $title, stepDescription: $stepDescription, stepUserActions: $stepUserActions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DependencyTutorialStepModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.stepDescription, stepDescription) &&
            const DeepCollectionEquality()
                .equals(other.stepUserActions, stepUserActions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(stepDescription),
      const DeepCollectionEquality().hash(stepUserActions));

  @JsonKey(ignore: true)
  @override
  _$DependencyTutorialStepModelCopyWith<_DependencyTutorialStepModel>
      get copyWith => __$DependencyTutorialStepModelCopyWithImpl<
          _DependencyTutorialStepModel>(this, _$identity);
}

abstract class _DependencyTutorialStepModel
    implements DependencyTutorialStepModel {
  const factory _DependencyTutorialStepModel(
          {required String title,
          required String stepDescription,
          required List<DependencyUserActionType> stepUserActions}) =
      _$_DependencyTutorialStepModel;

  @override
  String get title;
  @override
  String get stepDescription;
  @override
  List<DependencyUserActionType> get stepUserActions;
  @override
  @JsonKey(ignore: true)
  _$DependencyTutorialStepModelCopyWith<_DependencyTutorialStepModel>
      get copyWith => throw _privateConstructorUsedError;
}

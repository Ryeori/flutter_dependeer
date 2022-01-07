import 'package:freezed_annotation/freezed_annotation.dart';

part 'dependency_tutorial_model.freezed.dart';

@freezed
class DependencyTutorialModel with _$DependencyTutorialModel {
  const factory DependencyTutorialModel({
    required String title,
    required String id,
    required String desctiption,
  }) = _DependencyTutorialModel;
}

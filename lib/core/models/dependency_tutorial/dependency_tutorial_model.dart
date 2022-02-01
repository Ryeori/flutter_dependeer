import 'package:flutter_dependeer/core/models/dependency_tutorial_step/dependency_tutorial_step_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dependency_tutorial_model.freezed.dart';

enum ProjectDependencyModelType { normal, dev }

@freezed
class DependencyTutorialModel with _$DependencyTutorialModel {
  const factory DependencyTutorialModel({
    required String title,
    required String id,
    required String desctiption,
    required ProjectDependencyModelType type,
    required String version,
    required List<DependencyTutorialStepModel> steps,
  }) = _DependencyTutorialModel;
}

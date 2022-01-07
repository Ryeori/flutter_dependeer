import 'package:freezed_annotation/freezed_annotation.dart';

part 'dependency_tutorial_step_model.freezed.dart';

enum DependencyUserActionType { textInput, dropFile, userManualChanges }

@freezed
class DependencyTutorialStepModel with _$DependencyTutorialStepModel {
  const factory DependencyTutorialStepModel(
          {required String title,
          required String stepDescription,
          required List<DependencyUserActionType> stepUserActions}) =
      _DependencyTutorialStepModel;
}

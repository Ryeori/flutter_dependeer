import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_dependency_model.freezed.dart';

enum ProjectDependencyModelType { normal, dev }

@freezed
class ProjectDependencyModel with _$ProjectDependencyModel {
  const factory ProjectDependencyModel(
      {required String name,
      required String version,
      required ProjectDependencyModelType type}) = _ProjectDependencyModel;
}

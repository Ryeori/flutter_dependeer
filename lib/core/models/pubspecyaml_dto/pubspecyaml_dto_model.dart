// To parse this JSON data, do
//
//     final pubspecyamlDtoModel = pubspecyamlDtoModelFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pubspecyaml_dto_model.freezed.dart';
part 'pubspecyaml_dto_model.g.dart';

@freezed
abstract class PubspecyamlDtoModel with _$PubspecyamlDtoModel {
  const factory PubspecyamlDtoModel({
    required String name,
    required String description,
    required String version,
    required Environment environment,
    required Map<String, dynamic> dependencies,
    @JsonKey(name: 'dev_dependencies')
        required Map<String, dynamic> devDependencies,
  }) = _PubspecyamlDtoModel;

  factory PubspecyamlDtoModel.fromJson(Map<String, dynamic> json) =>
      _$PubspecyamlDtoModelFromJson(json);
}

@freezed
abstract class YamlDependency with _$YamlDependency {
  const factory YamlDependency({
    required String title,
    required String version,
  }) = _YamlDependency;

  factory YamlDependency.fromJson(Map<String, dynamic> json) =>
      _$YamlDependencyFromJson(json);
}

@freezed
abstract class Environment with _$Environment {
  const factory Environment({
    required String sdk,
  }) = _Environment;

  factory Environment.fromJson(Map<String, dynamic> json) =>
      _$EnvironmentFromJson(json);
}

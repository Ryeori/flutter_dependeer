// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pubspecyaml_dto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PubspecyamlDtoModel _$$_PubspecyamlDtoModelFromJson(
        Map<String, dynamic> json) =>
    _$_PubspecyamlDtoModel(
      name: json['name'] as String,
      description: json['description'] as String,
      version: json['version'] as String,
      environment:
          Environment.fromJson(json['environment'] as Map<String, dynamic>),
      dependencies: json['dependencies'] as Map<String, dynamic>,
      devDependencies: json['dev_dependencies'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_PubspecyamlDtoModelToJson(
        _$_PubspecyamlDtoModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'version': instance.version,
      'environment': instance.environment,
      'dependencies': instance.dependencies,
      'dev_dependencies': instance.devDependencies,
    };

_$_YamlDependency _$$_YamlDependencyFromJson(Map<String, dynamic> json) =>
    _$_YamlDependency(
      title: json['title'] as String,
      version: json['version'] as String,
    );

Map<String, dynamic> _$$_YamlDependencyToJson(_$_YamlDependency instance) =>
    <String, dynamic>{
      'title': instance.title,
      'version': instance.version,
    };

_$_Environment _$$_EnvironmentFromJson(Map<String, dynamic> json) =>
    _$_Environment(
      sdk: json['sdk'] as String,
    );

Map<String, dynamic> _$$_EnvironmentToJson(_$_Environment instance) =>
    <String, dynamic>{
      'sdk': instance.sdk,
    };

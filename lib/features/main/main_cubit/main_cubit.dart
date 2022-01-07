import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_dependy/core/constants.dart';
import 'package:flutter_dependy/core/models/pubspecyaml_dto/pubspecyaml_dto_model.dart';
import 'package:meta/meta.dart';
import 'package:flutter_dependy/core/models/project_dependency/project_dependency_model.dart';
import "package:yaml/yaml.dart";

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitialState());

  void initProject({DropDoneDetails? details}) async {
    late final String projectPath;
    //TODO: Add error handling for multiple dropped files
    if (details != null) {
      projectPath = details.files.first.path;
    } else {
      projectPath = await _getProjectPath();
    }
    if (projectPath.isEmpty) {
      emit(MainProjectErrorState(projectPath));
    } else {
      final File pubspecFile = File('$projectPath$pubspecyamlPath');
      final bool isPubspecExist = pubspecFile.existsSync();
      if (isPubspecExist) {
        final PubspecyamlDtoModel? parsedPubspecyaml =
            _tryParsePubspecyaml(pubspecFile.readAsStringSync());
        if (parsedPubspecyaml != null) {
          emit(MainDependenciesLoadedState(
              projectPath: projectPath, pubspecyaml: parsedPubspecyaml));
        } else {
          emit(MainProjectErrorState(
              'Pubspec.yaml parsing error. Please check it.'));
        }
      } else {
        emit(MainProjectErrorState(
            'no project was found in folder, try another folder'));
      }
    }
  }
}

PubspecyamlDtoModel? _tryParsePubspecyaml(String pubspecyamlString) {
  try {
    final YamlMap parsedYaml = loadYaml(pubspecyamlString);
    final pubspecDto =
        PubspecyamlDtoModel.fromJson(json.decode(json.encode(parsedYaml)));
    //TODO: REFACTOR
    pubspecDto.dependencies.removeWhere((key, value) => value is! String);
    pubspecDto.devDependencies.removeWhere((key, value) => value is! String);
    return pubspecDto;
  } catch (e) {
    print('pubspec.yaml parse error');
  }
}

Future<String> _getProjectPath() async {
  final String projectPath = await FilePicker.platform.getDirectoryPath() ?? '';
  return projectPath;
}

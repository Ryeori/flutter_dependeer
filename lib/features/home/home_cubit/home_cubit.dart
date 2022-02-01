import 'dart:io';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:flutter_dependeer/core/constants.dart';
import 'package:flutter_dependeer/core/models/dependency_tutorial/dependency_tutorial_model.dart';
import 'package:flutter_dependeer/core/models/pubspecyaml_dto/pubspecyaml_dto_model.dart';
import 'package:flutter_dependeer/core/utils/path_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';
import "package:yaml/yaml.dart";

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@LazySingleton()
@Injectable()
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  void initProject({DropDoneDetails? details}) async {
    late final String projectPath;
    //TODO: Add error handling for multiple dropped files
    if (details != null) {
      projectPath =
          _generateFilePathFromPickedFileOrFolder(details.files.first.path);
    } else {
      projectPath = await _getProjectPath();
    }
    if (projectPath.isEmpty) {
      emit(_Error(errorMessage: projectPath));
    } else {
      final File pubspecFile = File('$projectPath$pubspecyamlPath');
      final bool isPubspecExist = pubspecFile.existsSync();
      if (isPubspecExist) {
        final PubspecyamlDtoModel? parsedPubspecyaml =
            _tryParsePubspecyaml(pubspecFile.readAsStringSync());
        if (parsedPubspecyaml != null) {
          //Praparetion for future data fetching for generating tutorial for each dependency
          final generatedProjectDependencies = _generateDependenciesDto(
              dependencies: parsedPubspecyaml.dependencies,
              isDevDependencies: false);
          //For each dependency fetch tutorial steps from server

          emit(_ProjectDependenciesLoaded(
              projectPath: projectPath, pubspecyaml: parsedPubspecyaml));
        } else {
          emit(const _Error(
              errorMessage: 'Pubspec.yaml parsing error. Please check it.'));
        }
      } else {
        emit(const _Error(
            errorMessage:
                'no project was found in folder where you select a file, try another folder'));
      }
    }
  }

  void unloadProject() {
    emit(const _Initial());
  }

  String _generateFilePathFromPickedFileOrFolder(String filePath) {
    final lastDashIndex = filePath.lastIndexOf(dash);
    final getFileName = filePath.substring(lastDashIndex + 1);
    if (getFileName.contains('.')) {
      return filePath.substring(0, lastDashIndex);
    } else {
      return filePath;
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
    final String projectPath =
        await FilePicker.platform.getDirectoryPath() ?? '';
    return projectPath;
  }

  void _checkDependencyConfigurationStatus(
      //Dependency
      ) {
    // Checks wether a selected dependency is already configured or not,
    // if its not then show shows a last tutorial step
  }

  List<DependencyTutorialModel> _generateDependenciesDto(
      {required Map<String, dynamic> dependencies,
      required bool isDevDependencies}) {
    if (dependencies.isEmpty) {
      return [];
    } else {
      final List<DependencyTutorialModel> _dependencies = [];

      dependencies.forEach((key, value) {
        _dependencies.add(DependencyTutorialModel(
            title: key,
            id: '',
            desctiption: 'desctiption',
            type: isDevDependencies
                ? ProjectDependencyModelType.dev
                : ProjectDependencyModelType.normal,
            version: value,
            steps: []));
      });
      return _dependencies;
    }
  }
}

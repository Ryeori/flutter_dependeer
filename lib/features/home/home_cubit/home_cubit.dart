import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_dependeer/core/constants.dart';
import 'package:flutter_dependeer/core/models/pubspecyaml_dto/pubspecyaml_dto_model.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import "package:yaml/yaml.dart";

part 'home_state.dart';

@LazySingleton()
@Injectable()
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());

  void initProject({DropDoneDetails? details}) async {
    late final String projectPath;
    //TODO: Add error handling for multiple dropped files
    if (details != null) {
      projectPath = details.files.first.path;
    } else {
      projectPath = await _getProjectPath();
    }
    if (projectPath.isEmpty) {
      emit(HomeProjectErrorState(projectPath));
    } else {
      final File pubspecFile = File('$projectPath$pubspecyamlPath');
      final bool isPubspecExist = pubspecFile.existsSync();
      if (isPubspecExist) {
        final PubspecyamlDtoModel? parsedPubspecyaml =
            _tryParsePubspecyaml(pubspecFile.readAsStringSync());
        if (parsedPubspecyaml != null) {
          emit(HomeDependenciesLoadedState(
              projectPath: projectPath, pubspecyaml: parsedPubspecyaml));
        } else {
          emit(HomeProjectErrorState(
              'Pubspec.yaml parsing error. Please check it.'));
        }
      } else {
        emit(HomeProjectErrorState(
            'no project was found in folder, try another folder'));
      }
    }
  }

  void unloadProject() {
    emit(HomeInitialState());
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
}

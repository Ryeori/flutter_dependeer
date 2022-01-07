part of 'main_cubit.dart';

@immutable
abstract class MainState {}

class MainInitialState extends MainState {}

class MainDependenciesLoadedState extends MainState {
  final String projectPath;
  final PubspecyamlDtoModel pubspecyaml;
  MainDependenciesLoadedState(
      {required this.projectPath, required this.pubspecyaml});
}

class MainProjectErrorState extends MainState {
  final String errorText;

  MainProjectErrorState(this.errorText);
}

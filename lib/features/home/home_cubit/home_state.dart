part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitialState extends HomeState {}

class HomeDependenciesLoadedState extends HomeState {
  final String projectPath;
  final PubspecyamlDtoModel pubspecyaml;
  HomeDependenciesLoadedState(
      {required this.projectPath, required this.pubspecyaml});
}

class HomeProjectErrorState extends HomeState {
  final String errorText;

  HomeProjectErrorState(this.errorText);
}

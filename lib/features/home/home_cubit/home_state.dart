part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.projectDependenciesLoaded(
      {required String projectPath,
      required PubspecyamlDtoModel pubspecyaml}) = _ProjectDependenciesLoaded;
  const factory HomeState.error(
      {@Default('') String errorTitle,
      @Default('') String errorMessage}) = _Error;
  const factory HomeState.loading() = _Loading;
}

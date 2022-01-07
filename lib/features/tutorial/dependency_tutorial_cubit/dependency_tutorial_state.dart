part of 'dependency_tutorial_cubit.dart';

@immutable
abstract class DependencyTutorialState {}

class DependencyTutorialInitialState extends DependencyTutorialState {}

class DependencyTutorialSelectedState extends DependencyTutorialState {}

class DependencyTutorialInProgressState extends DependencyTutorialState {}

class DependencyTutorialDoneState extends DependencyTutorialState {}

class DependencyTutorialErrorState extends DependencyTutorialState {
  final String errorText;

  DependencyTutorialErrorState(this.errorText);
}

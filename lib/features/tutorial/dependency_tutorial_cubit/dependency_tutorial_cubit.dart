import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'dependency_tutorial_state.dart';

@LazySingleton()
@Injectable()
class DependencyTutorialCubit extends Cubit<DependencyTutorialState> {
  DependencyTutorialCubit() : super(DependencyTutorialInitialState());
}

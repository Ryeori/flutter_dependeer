import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_dependeer/core/injections/get_it_configuration.config.dart';

final GetIt getIt = GetIt.instance;

//TODO: Add environments
@injectableInit
Future<void> configureInjection(String env) async =>
    $initGetIt(getIt, environment: env);

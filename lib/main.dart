import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dependeer/core/injections/get_it_configuration.dart';
import 'package:flutter_dependeer/features/home/home_cubit/home_cubit.dart';
import 'package:flutter_dependeer/features/home/home_page.dart';
import 'package:window_manager/window_manager.dart';
import 'features/tutorial/dependency_tutorial_cubit/dependency_tutorial_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  configureInjection('test');

  windowManager.waitUntilReadyToShow().then((_) async {
    await windowManager.setMinimumSize(const Size(600, 800));
    await windowManager.setSize(const Size(1000, 800));

    windowManager.show();
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_dependeer',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
              .platformBrightness),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<HomeCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<DependencyTutorialCubit>(),
          ),
        ],
        child: const HomePage(),
      ),
    );
  }
}

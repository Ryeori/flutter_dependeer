import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dependeer/core/widgets/dependency_card.dart';
import 'package:flutter_dependeer/features/drap_and_drop/drag_and_drop_overlay.dart';
import 'package:flutter_dependeer/features/home/home_cubit/home_cubit.dart';
import 'package:flutter_dependeer/features/home/widgets/home_page_error_widget.dart';
import 'package:flutter_dependeer/features/tutorial/tutorial_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeCubit homeCubit;
  Map<String, dynamic> _dependecies = {};
  bool isProjectLoaded = false;

  @override
  void initState() {
    homeCubit = BlocProvider.of<HomeCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DrapAndDropOverlay(
          //TODO: Replace "details" in bloc with dto
          onDragDone: (details) {
            homeCubit.initProject(details: details);
          },
          isProjectAlreadyLoaded: isProjectLoaded,
          height: 300,
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocConsumer<HomeCubit, HomeState>(
                listener: (context, state) {
                  state.maybeWhen(
                    projectDependenciesLoaded: (projectPath, pubspecyaml) {
                      setState(() {
                        isProjectLoaded = true;
                        _dependecies
                          ..addAll(pubspecyaml.dependencies)
                          ..addAll(pubspecyaml.devDependencies);
                      });
                    },
                    initial: () {
                      setState(() {
                        isProjectLoaded = false;
                      });
                    },
                    orElse: () {
                      isProjectLoaded = false;
                      _dependecies = {};
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    initial: () {
                      return const SizedBox.shrink();
                    },
                    error: (errorTitle, errorMessage) {
                      if (errorTitle.isNotEmpty || errorMessage.isNotEmpty) {
                        return HomeStateErrorWidget(
                            errorTitle: errorTitle, errorMessage: errorMessage);
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
                    projectDependenciesLoaded: (projectPath, pubspecyaml) {
                      return Expanded(
                        child: ListView.separated(
                          shrinkWrap: true,
                          itemCount: _dependecies.length + 1,
                          separatorBuilder: (context, index) {
                            return const VerticalDivider();
                          },
                          itemBuilder: (context, index) {
                            return index == 0
                                ? const DependencyHeaderCard()
                                : InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return TutorialPage(
                                              selectedDependency: _dependecies
                                                  .entries
                                                  .elementAt(index));
                                        },
                                      ));
                                    },
                                    child: DependencyCard(
                                      title: _dependecies.keys
                                          .elementAt(index - 1),
                                      version: _dependecies.values
                                          .elementAt(index - 1),
                                      isVerified: true,
                                    ));
                          },
                        ),
                      );
                    },
                    orElse: () {
                      return const SizedBox.shrink();
                    },
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (isProjectLoaded)
                    OutlinedButton(
                        onPressed: homeCubit.unloadProject,
                        child: const Padding(
                          padding: EdgeInsets.all(25),
                          child: Text('Unload Project'),
                        )),
                  ElevatedButton(
                      onPressed: homeCubit.initProject,
                      child: const Padding(
                        padding: EdgeInsets.all(25),
                        child: Text('Open project folder'),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

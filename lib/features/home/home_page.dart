import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dependeer/features/drap_and_drop/drag_and_drop_overlay.dart';
import 'package:flutter_dependeer/features/home/home_cubit/home_cubit.dart';
import 'package:flutter_dependeer/features/tutorial/tutorial_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeCubit homeCubit;
  bool isProjectLoaded = false;
  Map<String, dynamic> _dependecies = {};

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
          height: 300,
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocConsumer<HomeCubit, HomeState>(
                listener: (context, state) {
                  isProjectLoaded = state is HomeDependenciesLoadedState;
                  setState(() {
                    if (state is HomeDependenciesLoadedState) {
                      _dependecies
                        ..addAll(state.pubspecyaml.dependencies)
                        ..addAll(state.pubspecyaml.devDependencies);
                    } else {
                      _dependecies = {};
                    }
                  });
                },
                builder: (context, state) {
                  if (state is HomeProjectErrorState) {
                    return Text(state.errorText);
                  }
                  if (state is HomeDependenciesLoadedState) {
                    return Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return const VerticalDivider();
                        },
                        itemBuilder: (context, columnIndex) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                                _dependecies.length,
                                (index) => InkWell(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                          builder: (context) {
                                            return TutorialPage(
                                                selectedDependency: _dependecies
                                                    .entries
                                                    .elementAt(index));
                                          },
                                        ));
                                      },
                                      child: Text(columnIndex == 0
                                          ? _dependecies.keys.elementAt(index)
                                          : _dependecies.values
                                              .elementAt(index)),
                                    )),
                          );
                        },
                      ),
                    );
                  }

                  return const SizedBox.shrink();
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

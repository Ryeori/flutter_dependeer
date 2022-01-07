import 'package:desktop_drop/desktop_drop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dependy/features/drap_and_drop/drag_and_drop_overlay.dart';
import 'package:flutter_dependy/features/main/main_cubit/main_cubit.dart';
import 'package:flutter_dependy/features/tutorial/tutorial_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DrapAndDropOverlay(
          //TODO: Replace "details" in bloc with dto
          onDragDone: (details) {
            BlocProvider.of<MainCubit>(context).initProject(details: details);
          },
          height: 300,
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<MainCubit, MainState>(
                builder: (context, state) {
                  if (state is MainProjectErrorState) {
                    return Text(state.errorText);
                  }
                  if (state is MainDependenciesLoadedState) {
                    final Map<String, dynamic> _dependecies = {}
                      ..addAll(state.pubspecyaml.dependencies)
                      ..addAll(state.pubspecyaml.devDependencies);
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
              ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<MainCubit>(context).initProject();
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(25),
                    child: Text('Open project folder'),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

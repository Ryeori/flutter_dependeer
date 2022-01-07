import 'package:flutter/material.dart';
import 'package:flutter_dependeer/features/drap_and_drop/drag_and_drop_overlay.dart';

class TutorialPage extends StatelessWidget {
  final MapEntry<String, dynamic> selectedDependency;
  const TutorialPage({Key? key, required this.selectedDependency})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedDependency.key} ${selectedDependency.value}'),
        centerTitle: true,
      ),
      body: DrapAndDropOverlay(
        title: 'Drop your own .json instruction file',
        child: Center(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
          ],
        )),
      ),
    );
  }
}

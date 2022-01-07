import 'package:flutter/material.dart';

class TutorialPage extends StatelessWidget {
  final MapEntry<String, dynamic> selectedDependency;
  const TutorialPage({Key? key, required this.selectedDependency})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [Text(selectedDependency.key.toString())],
      ),
    );
  }
}

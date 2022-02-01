import 'package:flutter/cupertino.dart';

class HomeStateErrorWidget extends StatelessWidget {
  final String errorTitle;
  final String errorMessage;

  const HomeStateErrorWidget(
      {Key? key, required this.errorTitle, required this.errorMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(errorTitle),
      Text(errorMessage),
    ]);
  }
}

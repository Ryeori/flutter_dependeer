import 'package:flutter/material.dart';

class DependencyCard extends StatefulWidget {
  final String title;
  final String version;

  //Means that dependency verified all the instruction steps
  final bool isVerified;
  const DependencyCard(
      {Key? key,
      required this.title,
      required this.version,
      required this.isVerified})
      : super(key: key);

  @override
  _DependencyCardState createState() => _DependencyCardState();
}

class _DependencyCardState extends State<DependencyCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: Text(widget.title)),
          Expanded(child: Text(widget.version)),
          Expanded(
            child: Checkbox(
              value: widget.isVerified,
              onChanged: (_) {},
              overlayColor: MaterialStateProperty.resolveWith((states) {
                return Colors.transparent;
              }),
            ),
          )
        ],
      ),
    ));
  }
}

class DependencyHeaderCard extends StatelessWidget {
  const DependencyHeaderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: Text('Title')),
        Expanded(child: Text('Version')),
        Expanded(
          child: Text('Already setted up'),
        )
      ],
    );
  }
}

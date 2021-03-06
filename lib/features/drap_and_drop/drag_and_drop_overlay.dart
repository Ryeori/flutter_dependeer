import 'package:desktop_drop/desktop_drop.dart';
import 'package:flutter/material.dart';

class DrapAndDropOverlay extends StatefulWidget {
  final Function(DropEventDetails details)? onDragEntered;
  final Function(DropDoneDetails details)? onDragDone;
  final Function(DropEventDetails details)? onDragExited;
  final Function(DropEventDetails details)? onDragUpdated;
  //If we have already loaded project and we trying to load new one, the pop up will appear
  final bool isProjectAlreadyLoaded;
  final double? width;
  final double? height;
  final Widget child;
  final String? title;
  final IconData? icon;

  const DrapAndDropOverlay(
      {Key? key,
      this.onDragDone,
      this.onDragEntered,
      this.onDragExited,
      this.onDragUpdated,
      required this.isProjectAlreadyLoaded,
      this.width,
      this.height,
      this.title,
      this.icon,
      required this.child})
      : super(key: key);

  @override
  _DrapAndDropOverlayState createState() => _DrapAndDropOverlayState();
}

class _DrapAndDropOverlayState extends State<DrapAndDropOverlay> {
  bool itemIsHovered = false;
  DropDoneDetails? lastDroppedFile;

  Future<bool> showDialogOnFileChange() async {
    bool loadNewFiles = false;
    await showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (context) {
        return Dialog(
            child: Row(
          children: [
            TextButton(
                onPressed: () {
                  loadNewFiles = false;
                  Navigator.pop(context);
                },
                child: const Text('Stay with current')),
            TextButton(
                onPressed: () {
                  loadNewFiles = true;
                  Navigator.pop(context);
                },
                child: const Text('Replace with new'))
          ],
        ));
      },
    );
    return loadNewFiles;
  }

  bool checkDroppedFilesEquality(DropDoneDetails newFile) {
    return lastDroppedFile!.files.first.name.hashCode +
            lastDroppedFile!.files.first.path.hashCode ==
        newFile.files.first.name.hashCode + newFile.files.first.path.hashCode;
  }

  void loadAndUpdateNewFile(DropDoneDetails newFileDetails) {
    if (widget.onDragDone != null) {
      widget.onDragDone!(newFileDetails);
    }
    lastDroppedFile = newFileDetails;
    itemIsHovered = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        widget.child,
        IgnorePointer(
          ignoring: !itemIsHovered,
          child: DropTarget(
              onDragDone: (details) async {
                //TODO: separate logic
                if (lastDroppedFile != null && widget.isProjectAlreadyLoaded) {
                  if (!checkDroppedFilesEquality(details)) {
                    await showDialogOnFileChange().then((replaceWithNew) {
                      if (replaceWithNew) {
                        loadAndUpdateNewFile(details);
                      }
                    });
                  } else {
                    loadAndUpdateNewFile(details);
                  }
                } else {
                  loadAndUpdateNewFile(details);
                }
              },
              onDragEntered: (details) {
                if (widget.onDragEntered != null) {
                  widget.onDragEntered!(details);
                }
                itemIsHovered = true;
                setState(() {});
              },
              onDragExited: (details) {
                if (widget.onDragExited != null) {
                  widget.onDragExited!(details);
                }
                itemIsHovered = false;
                setState(() {});
              },
              onDragUpdated: widget.onDragUpdated,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 350),
                curve: Curves.easeOutQuint,
                height: size.height,
                width: size.width,
                color: itemIsHovered
                    ? Colors.blue.shade300.withOpacity(0.55)
                    : Colors.transparent,
                child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 350),
                    opacity: itemIsHovered ? 1 : 0,
                    curve: Curves.easeOutQuint,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          widget.icon ?? Icons.folder,
                          size: 100,
                          color: Colors.white,
                        ),
                        Text(
                          widget.title ??
                              'Drag and Drop your project folder here',
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white),
                        )
                      ],
                    )),
              )),
        ),
      ],
    );
  }
}

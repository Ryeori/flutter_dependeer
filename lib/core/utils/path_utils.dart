import 'dart:io';

String dash = Platform.isMacOS ? '/' : '\\';

///Generates a filepath with platform dependent dashes
///[pathList] contans all folders and the target file with extension
///for example {'ios','Runner','info.plist'}
String generatePathtWithDashes(List<String> pathList) {
  return dash + List<String>.from(pathList).join(dash);
}

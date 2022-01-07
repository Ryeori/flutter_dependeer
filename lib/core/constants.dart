import 'package:flutter_dependeer/core/utils/path_utils.dart';

String pubspecyamlPath = generatePathtWithDashes(['pubspec.yaml']);
String androidManifestPath = generatePathtWithDashes(
    ['android', 'app', 'src', 'main', 'AndroidManifest.xml']);
// 'android''app''src''main''AndroidManifest.xml';
String androidAppBuildGradlePath =
    generatePathtWithDashes(['android', 'app', 'build.gradle']);
String androidRootBuildGradlePath =
    generatePathtWithDashes(['android', 'build.gradle']);
String androidGradlePropertiesPath =
    generatePathtWithDashes(['android', 'gradle.properties']);
String iosInfoplist = generatePathtWithDashes(['ios', 'Runner', 'info.plist']);
String iosAppDelegate =
    generatePathtWithDashes(['ios', 'Runner', 'AppDelegate.swift']);

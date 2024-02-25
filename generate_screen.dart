//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// XYZ Gen
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'package:xyz_gen/xyz_gen.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

// To-Do: Specify your app/root folder to generate for.
const TARGET_APP = "_view";

// To-Do: Give the screen class a name. NB: It must start it with "Screen",
// e.g. "ScreenTest".
const CLASS_NAME = "EmptyScreen";

// To-Do: Provide a title for the Screen.
const DEFAULT_TITLE = "Empty";

// To-Do: Specify the Screen's access settings:
const bool? IS_ONLY_ACCESSIBLE_IF_LOGGED_IN_AND_VERIFIED = false;
const bool? IS_ONLY_ACCESSIBLE_IF_LOGGED_IN = false;
const bool? IS_ONLY_ACCESSIBLE_IF_LOGGED_OUT = false;
const bool? IS_REDIRECTABLE = true;

// To-Do: Provide a makeup class for the Screen, or leave empty:
const String? MAKEUP = "";

// To-Do: Provide a navigation control widget for the Screen, or leave empty:
const String? NAVIGATION_CONTROL_WIDGET = "";

// To-Do: Specify parameters for the Screen, or leave empty:
const INTERNAL_PARAMETERS = <String, String>{
  //"chatId": "String", // (example)
};

// To-Do: Specify query parameters for the Screen, or leave empty:
const QUERY_PARAMETERS = <String>{
  // e.g. "chatId", // (example)
};

// To-Do: Specify part files to generate for the Screen, or leave empty:
const PART_FILE_DIRS = <String>{
  // "components/_header_widget.dart", // (example)
};

final bindingsTemplate = {
  0: "default_screen_bindings_template",
}
// To-Do: Choose a number from the map above, or leave empty:
    [0];

final controllerTemplate = {
  0: "default_screen_controller_template",
  1: "empty_screen_controller_template",
}
// To-Do: Choose a number from the map above, or leave empty:
    [1];

final viewTemplate = {
  0: "default_screen_view_template",
  1: "empty_screen_view_template",
}
// To-Do: Choose a number from the map above, or leave empty:
    [1];

final screenTemplate = {
  0: "default_screen_template",
} // To-Do: Choose a number from the map above, or leave empty:
    [0];

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
//
// DO NOT MODIFY BELOW
//
// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

void main() async {
  final screensDir = "$currentScriptDir/../$TARGET_APP/lib/screens";
  await _generateScreens(screensDir);
  await _generateScreenAccess(screensDir);
  if (PART_FILE_DIRS.isNotEmpty) {
    await _generateDirectives(screensDir);
  }
  await _generateExports(screensDir);
}

// -----------------------------------------------------------------------------

Future<void> _generateScreens(String screensDir) {
  return generateScreensApp(
    {
      "--bindings-template":
          "$currentScriptDir/templates/generate_screen_bindings/$bindingsTemplate.dart.md",
      "--controller-template":
          "$currentScriptDir/templates/generate_screen/$controllerTemplate.dart.md",
      "--view-template": "$currentScriptDir/templates/generate_screen/$viewTemplate.dart.md",
      "--screen-template": "$currentScriptDir/templates/generate_screen/$screenTemplate.dart.md",
      "--output": screensDir,
      "--class-name": CLASS_NAME,
      "--default-title": DEFAULT_TITLE,
      "--is-only-accessible-if-logged-in-and-verified":
          IS_ONLY_ACCESSIBLE_IF_LOGGED_IN_AND_VERIFIED?.toString(),
      "--is-only-accessible-if-logged-in": IS_ONLY_ACCESSIBLE_IF_LOGGED_IN?.toString(),
      "--is-only-accessible-if-logged-out": IS_ONLY_ACCESSIBLE_IF_LOGGED_OUT?.toString(),
      "--is-redirectable": IS_REDIRECTABLE?.toString(),
      "--makeup": MAKEUP,
      "--navigation-control-widget": NAVIGATION_CONTROL_WIDGET,
      "--internal-parameters":
          INTERNAL_PARAMETERS.entries.map((e) => "${e.key}:${e.value}").join("&&"),
      "--query-parameters": QUERY_PARAMETERS.join("&"),
      "--part-file-dirs": PART_FILE_DIRS.join("&"),
    }
        .map((k, v) => MapEntry(k, v?.nullIfEmpty))
        .nonNulls
        .entries
        .map((e) => [e.key, e.value])
        .reduce((a, b) => [...a, ...b]),
  );
}

// -----------------------------------------------------------------------------

Future<void> _generateScreenAccess(String screensDir) {
  return generateScreenAccessApp([
    "-t",
    "$currentScriptDir/templates/generate_screen_access/default_screen_access_template.dart.md",
    "-r",
    screensDir,
    "--output",
    "$screensDir/screen_access.g.dart",
  ]);
}

// -----------------------------------------------------------------------------

Future<void> _generateDirectives(String screensDir) {
  return generateDirectivesApp(["-r", screensDir]);
}

// -----------------------------------------------------------------------------

Future<void> _generateExports(String screensDir) {
  return generateExportsApp([
    "-t",
    "$currentScriptDir/templates/generate_exports/default_exports_template.dart.md",
    "-r",
    screensDir,
  ]);
}

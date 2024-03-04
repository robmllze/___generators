//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// X|Y|Z & Dev
//
// Copyright Ⓒ Robert Mollentze, xyzand.dev
//
// Licensing details can be found in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'package:xyz_gen/xyz_gen.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

// To-Do: Specify your apps/root folders to generate for.
const targetApps = <String>{
  "_data",
  "_service_interfaces",
  "_services",
  "_view",
  "example_app",
  "admin_app",
  "public_app",
  "operations_app",
};

// To-Do: Specify the directories in your apps/root folders to generate for.
const subDirectories = <String>{
  "types",
};

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
//
// DO NOT MODIFY BELOW
//
// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

void main() async {
  await _generateTypeUtils();
  await _generateExports();
}

// -----------------------------------------------------------------------------

Future<void> _generateTypeUtils() async {
  await generateTypeUtilsApp([
    "-t",
    "$currentScriptDir/templates/generate_type_utils/your_type_utils_template.dart.md",
    "-r",
    targetApps
        .map((e) => "$currentScriptDir/../${e.isNotEmpty ? "$e/" : ""}lib")
        .join("&"),
    "-s",
    subDirectories.join("&"),
  ]);
}

// -----------------------------------------------------------------------------

Future<void> _generateExports() async {
  await generateExportsApp([
    "-t",
    "$currentScriptDir/templates/generate_exports/your_exports_template.dart.md",
    "-r",
    targetApps
        .map((e) => "$currentScriptDir/../${e.isNotEmpty ? "$e/" : ""}lib")
        .join("&"),
    "-s",
    subDirectories.join("&"),
  ]);
}

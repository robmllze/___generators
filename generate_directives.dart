//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// X|Y|Z & Dev
//
// Copyright Ⓒ Robert Mollentze (https://xyzand.dev)
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
  "genie_app",
};

// To-Do: Specify the directories in your apps/root folders to generate for.
const subDirectories = <String>{
  "",
};

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
//
// DO NOT MODIFY BELOW
//
// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

void main() async {
  await _generateDirectives();
  await _generateExports();
}

// -----------------------------------------------------------------------------

Future<void> _generateDirectives() {
  return generateDirectivesApp([
    "-r",
    targetApps.map((e) => "$currentScriptDir/../${e.isNotEmpty ? "$e/" : ""}lib").join("&"),
    "-s",
    subDirectories.join("&"),
  ]);
}

// -----------------------------------------------------------------------------

Future<void> _generateExports() {
  return generateExportsApp([
    "-t",
    "$currentScriptDir/templates/generate_exports/default_exports_template.dart.md",
    "-r",
    targetApps.map((e) => "$currentScriptDir/../${e.isNotEmpty ? "$e/" : ""}lib").join("&"),
    "-s",
    subDirectories.join("&"),
  ]);
}
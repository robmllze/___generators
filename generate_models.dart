//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// X|Y|Z & Dev - https://xyzand.dev
//
// Copyright Ⓒ Robert Mollentze
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
  "_view",
  "example_app",
  "genie_app",
};

// To-Do: Specify the directories in your apps/root folders to generate for.
const subDirectories = <String>{
  "models",
};

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
//
// DO NOT MODIFY BELOW
//
// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

void main() async {
  await _generateModels();
  await _generateExports();
}

// -----------------------------------------------------------------------------

Future<void> _generateModels() {
  return generateModelsApp([
    "-t",
    "$currentScriptDir/templates/generate_models/default_model_template.dart.md",
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
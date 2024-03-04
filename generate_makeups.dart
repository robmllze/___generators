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
  "_view",
  "example_app",
  "admin_app",
  "public_app",
  "operations_app",
};

// To-Do: Specify the directories in your apps/root folders to generate for.
const subDirectories = <String>{
  "",
  "widgets",
  "components",
  "makeups",
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

Future<void> _generateModels() async {
  for (final targetApp in targetApps) {
    await generateMakeupsApp([
      "--builder-template",
      "$currentScriptDir/templates/generate_makeups/your_makeup_builder_template.dart.md",
      "--class-template",
      "$currentScriptDir/templates/generate_makeups/your_makeup_class_template.dart.md",
      "--theme-template",
      "$currentScriptDir/templates/generate_makeups/your_generated_theme_template.dart.md",
      "--generate-template",
      "$currentScriptDir/templates/generate_makeups/your_makeup_generate_template.dart.md",
      "-r",
      "$currentScriptDir/../${targetApp.isNotEmpty ? "$targetApp/" : ""}lib",
      "-s",
      subDirectories.join("&"),
      "--output",
      "$currentScriptDir/../$targetApp/lib/makeups",
    ]);
  }
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

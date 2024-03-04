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

// To-Do: List the folders their subfolders that may hold your widget classes
// that you annotated with @GenerateMakeup, in order to generate their
// respective makeup classes.
const folders = <String>{
  "_view/lib/src",
  "example_app/lib",
  "admin_app/lib",
  "operations_app/lib",
  "public_app/lib",
};

const subfolders = <String>{
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
  for (final folder in folders) {
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
      "$currentScriptDir/../$folder",
      "-s",
      subfolders.join("&"),
      "--output",
      "$currentScriptDir/../$folder/makeups",
    ]);
  }
}

// -----------------------------------------------------------------------------

Future<void> _generateExports() async {
  await generateExportsApp([
    "-t",
    "$currentScriptDir/templates/generate_exports/your_exports_template.dart.md",
    "-r",
    folders.map((e) => "$currentScriptDir/../${e.isNotEmpty ? "$e/" : ""}").join("&"),
    "-s",
    subfolders.join("&"),
  ]);
}

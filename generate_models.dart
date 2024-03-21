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

// To-Do: List the folders and their subfolders that may hold your model
// template classes that you annotated with @GenerateModel, in order to generate
// their respective model classes.
const folders = <String>{
  '_data',
  'example_app',
  'admin_app',
  'operations_app',
  'public_app',
};

const subfolders = <String>{
  'lib/src/models',
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
  await generateModelsApp([
    '-t',
    '$currentScriptDir/templates/generate_models/your_model_template.dart.md',
    '-r',
    folders
        .map((e) => "$currentScriptDir/../${e.isNotEmpty ? "$e/" : ""}")
        .join('&'),
    '-s',
    subfolders.join('&'),
  ]);
}

// -----------------------------------------------------------------------------

Future<void> _generateExports() async {
  await generateExportsApp([
    '-t',
    '$currentScriptDir/templates/generate_exports/your_exports_template.dart.md',
    '-r',
    folders
        .map((e) => "$currentScriptDir/../${e.isNotEmpty ? "$e/" : ""}")
        .join('&'),
    '-s',
    subfolders.join('&'),
  ]);
}

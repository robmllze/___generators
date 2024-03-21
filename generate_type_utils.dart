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

// To-Do: List the folders and their subfolders that may hold your enums
// that you annotated with @GenerateTypeUtils, in order to generate their
// respective type utils.
const folders = <String>{
  '',
  '_data',
  '_service_interfaces',
  '_services',
  '_view',
  'example_app',
  'admin_app',
  'operations_app',
  'public_app',
};

const subfolders = <String>{
  'lib/src/types',
  'lib/types',
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
    '-t',
    '$currentScriptDir/templates/generate_type_utils/your_type_utils_template.dart.md',
    '-r',
    folders.map((e) => "$currentScriptDir/../${e.isNotEmpty ? "$e/" : ""}").join('&'),
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
    folders.map((e) => "$currentScriptDir/../${e.isNotEmpty ? "$e/" : ""}").join('&'),
    '-s',
    subfolders.join('&'),
  ]);
}

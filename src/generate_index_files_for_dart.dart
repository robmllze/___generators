//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'package:xyz_gen/generators/generate_index_files_for_dart/lib/src/_index.g.dart';
import 'package:xyz_gen/xyz_gen.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

// To-Do: List the folders and their subfolders to generate exports for.
const folders = <String>{
  // 'tests/test1',
  // 'tests/test2',
  'xyz_gen_annotations',
  'xyz_gen',
  // '_data',
  // '_service_interfaces',
  // '_services',
  // '_view',
  // 'projects/admin_app',
  // 'projects/operations_app',
  // 'projects/public_app',
};

const subfolders = <String>{
  'lib/',
  'lib/generators',
  'lib/src',
  'lib/src/data_models/annotations',
  // 'lib/src/xyz',
  // 'lib/generators/generate_directives_for_dart/lib/src',
  // 'lib/generators/generate_index_files_for_dart/lib/src',
  // 'lib/generators/generate_index_files_for_typescript/lib/src',
  // 'lib/generators/generate_models_for_dart/lib/src',
  // 'lib/annotations_src/',
  // 'lib/utils_src/',
  //'lib/src/models/',
  // 'lib/src/generators/generate_dart_models/src',
  // 'lib/src/generators/generate_dart_exports/src',
  // 'lib/src/generators/generate_dart_directives/src',
};

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
//
// DO NOT MODIFY BELOW
//
// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

void main(List<String> args) async {
  DebugLog.debugOnly = false;
  await runGenerateIndexFilesForDartApp([
    '-t',
    '$currentScriptDir/templates/generate_exports_for_dart/',
    '-r',
    folders.map((e) => '$currentScriptDir/../../${e.isNotEmpty ? '$e/' : ''}').join('&'),
    '-s',
    subfolders.join('&'),
    ...args,
  ]);
}

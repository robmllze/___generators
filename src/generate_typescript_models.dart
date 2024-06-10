//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'package:xyz_gen/xyz_gen.dart';
import 'package:xyz_utils/xyz_utils.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

// To-Do: List the folders and their subfolders that may hold your model
// template classes that you annotated with @GenerateModel, in order to generate
// their respective model classes.
const folders = <String>{
  '',
  'example',
  '_data',
  'apps/admin_app',
  'apps/operations_app',
  'apps/public_app',
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
}

// -----------------------------------------------------------------------------

Future<void> _generateModels() async {
  DebugLog.debugOnly = false;
  await generateModelsApp([
    '-t',
    [
      '$currentScriptDir/templates/generate_models/basic_model_template.ts.md',
    ].join('&'),
    '-r',
    folders.map((e) => '$currentScriptDir/../../${e.isNotEmpty ? '$e/' : ''}').join('&'),
    '-s',
    subfolders.join('&'),
    '-o',
    './apps/functions/src/models',
  ]);
}

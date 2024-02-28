# Generators

## Steps to Get Started

### 1. Clone the Generator Scripts:

Navigate to your project directory by running `cd your/project/path` in your terminal. Then clone the generator scripts repository:

#### On macOS and Linux:

```bash
git clone https://github.com/robmllze/___generators.git && rm -rf ___generators/.git/
```
#### On Windows:

```cmd
git clone https://github.com/robmllze/___generators.git && rmdir /s /q ___generators/.git/
```

This will clone the generator scripts into your project directory and remove the `.git` directory, effectively detaching it from version control so that you can modify it as needed.

### 2. Modify the Generators as Needed:

Once cloned, you can modify the generator scripts or templates according to your project requirements.

### 3. Run the Generator Scripts:

Execute any of the generator scripts by navigating to the cloned directory and running:

```bash
dart ___generators/generate_models.dart
```

Replace `generate_models.dart` with the specific generator you wish to run, for example, `dart generate_exports.dart`.

### 4. Enhance Workflow Efficiency:

Consider setting up keyboard shortcuts or single-click actions to quickly run the generators. For instance, in Visual Studio Code, you can configure tasks to execute the generators with ease. Learn more: https://code.visualstudio.com/docs/editor/tasks.

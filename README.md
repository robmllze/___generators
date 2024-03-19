# Generators

## Steps to Get Started

### 1. Clone the Generator Scripts:

Navigate to your project directory by running `cd your/project/path` in your terminal. To clone the generator scripts into your project directory, copy the following chunk of commands then paste it into your terminal and hit return:

#### On macOS and Linux:

```bash
rm -rf ___generators/
git clone https://github.com/robmllze/___generators.git
cd ___generators
dart pub get
rm -rf .git/
cd ..
```

#### On Windows:

```bash
rm -rf ___generators/
git clone https://github.com/robmllze/___generators.git
cd ___generators
dart pub get
rmdir /s /q .git/
cd ..
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

## Additional Resources

The `./additional_resources/` folder contains additional resources that may be useful for your project. The following resources are included:

- `./additional_resources/for_vs-code/tasks.json`: A sample `tasks.json` file for Visual Studio Code that includes tasks to run the generator scripts. After copying the file to your project's `.vscode` directory, you can run the generators by pressing `Cmd + Shift + P` or `Ctrl + Shift + P` and typing "Tasks: Run Task" and selecting the task you want to run.

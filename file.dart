import 'dart:io'; // Import for file handling

void main() async {
  // File paths (change these paths based on your system)
  String inputFilePath = 'input.txt';
  String outputFilePath = 'output.txt';

  // Reading from a file
  try {
    // Read the content of the input file
    String fileContent = await File(inputFilePath).readAsString();
    print("Content of the input file:");
    print(fileContent);

    // Writing to another file
    try {
      // New content to write to the output file
      String newData = "This is the new data that will be written to the file.";
      await File(outputFilePath).writeAsString(newData);
      print("New data has been written to the output file.");
    } catch (e) {
      print("An error occurred while writing to the file: $e");
    }

  } catch (e) {
    print("An error occurred while reading the file: $e");
  }
}

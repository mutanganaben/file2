import 'dart:io'; // Import for file handling
import 'package:intl/intl.dart'; // Import for date formatting

void main() async {
  // Collection to store manipulated strings with timestamps
  List<Map<String, String>> logEntries = [];

  // Loop to get user input and perform operations
  while (true) {
    print("\nEnter a string to manipulate (or type 'exit' to quit):");
    String userInput = stdin.readLineSync() ?? '';

    if (userInput.toLowerCase() == 'exit') {
      break;
    }

    // String manipulation
    String upperCase = userInput.toUpperCase();
    String lowerCase = userInput.toLowerCase();
    String reversed = userInput.split('').reversed.join('');
    int length = userInput.length;

    // Get the current date and time
    String now = DateFormat('yyyy-MM-dd – HH:mm:ss').format(DateTime.now());

    // Log entry
    String logEntry = '''
    Original String: $userInput
    Uppercase: $upperCase
    Lowercase: $lowerCase
    Reversed: $reversed
    Length: $length
    Timestamp: $now
    ''';

    logEntries.add({
      'original': userInput,
      'uppercase': upperCase,
      'lowercase': lowerCase,
      'reversed': reversed,
      'length': length.toString(),
      'timestamp': now
    });

    print("\nLog Entry:\n$logEntry");
  }

  // Save log entries to a file
  String logFilePath = 'log.txt';
  try {
    File logFile = File(logFilePath);
    StringBuffer buffer = StringBuffer();

    for (var entry in logEntries) {
      buffer.writeln('''
      Original String: ${entry['original']}
      Uppercase: ${entry['uppercase']}
      Lowercase: ${entry['lowercase']}
      Reversed: ${entry['reversed']}
      Length: ${entry['length']}
      Timestamp: ${entry['timestamp']}
      ''');
    }

    await logFile.writeAsString(buffer.toString());
    print("\nLog entries have been saved to $logFilePath.");
  } catch (e) {
    print("An error occurred while saving the file: $e");
  }
}

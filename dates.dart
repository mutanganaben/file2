import 'package:intl/intl.dart'; // Import for date formatting

void main() {
  // 1. Current Date and Time
  DateTime now = DateTime.now();
  print("Current Date and Time: $now");

  // 2. Formatting Dates
  // Using the intl package for custom formatting
  String formattedDate = DateFormat('yyyy-MM-dd – HH:mm:ss').format(now);
  print("Formatted Date and Time: $formattedDate");

  // 3. Parsing Dates
  String dateString = '2024-09-18 14:30:00';
  DateTime parsedDate = DateFormat('yyyy-MM-dd HH:mm:ss').parse(dateString);
  print("Parsed Date and Time: $parsedDate");

  // 4. Manipulating Dates
  // Adding and subtracting days
  DateTime futureDate = now.add(Duration(days: 10));
  DateTime pastDate = now.subtract(Duration(days: 10));
  print("Date 10 days in the future: $futureDate");
  print("Date 10 days in the past: $pastDate");

  // 5. Calculating Difference Between Two Dates
  DateTime anotherDate = DateTime(2024, 12, 31);
  Duration difference = anotherDate.difference(now);
  print("Difference between $anotherDate and now: ${difference.inDays} days");

  // Display the difference in a more readable format
  print("Difference in hours: ${difference.inHours}");
  print("Difference in minutes: ${difference.inMinutes}");
}

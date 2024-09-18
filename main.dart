void main() {
  // 1. Lists
  print("=== Lists ===");
  // A list is an ordered collection of elements that allows duplicates
  List<String> fruits = ['Apple', 'Banana', 'Mango'];

  // Adding elements to the list
  fruits.add('Orange');
  print("Fruits after adding 'Orange': $fruits");

  // Removing an element from the list
  fruits.remove('Banana');
  print("Fruits after removing 'Banana': $fruits");

  // Iterating over a list
  for (var fruit in fruits) {
    print(fruit);
  }

  // When to use: Lists are best when you need an ordered collection of elements, and duplicates are allowed.

  // 2. Sets
  print("\n=== Sets ===");
  // A set is an unordered collection of unique elements
  Set<int> uniqueNumbers = {1, 2, 3, 4};

  // Adding elements to the set
  uniqueNumbers.add(5);
  uniqueNumbers.add(3); // Duplicate values are ignored
  print("Set after adding '5' and attempting to add duplicate '3': $uniqueNumbers");

  // Removing an element from the set
  uniqueNumbers.remove(2);
  print("Set after removing '2': $uniqueNumbers");

  // Iterating over a set
  for (var number in uniqueNumbers) {
    print(number);
  }

  // When to use: Sets are useful when you need to ensure that each element appears only once, and you don’t care about order.

  // 3. Maps
  print("\n=== Maps ===");
  // A map is a collection of key-value pairs
  Map<String, int> studentScores = {
    'Alice': 85,
    'Bob': 92,
    'Charlie': 78,
  };

  // Adding a key-value pair
  studentScores['David'] = 90;
  print("Map after adding 'David': $studentScores");

  // Removing a key-value pair
  studentScores.remove('Charlie');
  print("Map after removing 'Charlie': $studentScores");

  // Iterating over a map
  studentScores.forEach((key, value) {
    print("Student: $key, Score: $value");
  });

  // When to use: Maps are ideal for storing key-value pairs when you need to look up values based on keys.
}

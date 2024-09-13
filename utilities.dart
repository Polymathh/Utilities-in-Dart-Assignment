void stringManipulation() {
  String str1 = "Hello";
  String str2 = "World";

  // String concatenation
  String concatenated = str1 + " " + str2;
  print("Concatenation: $concatenated");

  // String interpolation
  String interpolated = "$str1, welcome to the $str2!";
  print("Interpolation: $interpolated");

  // Substring extraction
  String substring = concatenated.substring(0, 5);
  print("Substring: $substring");

  // Case conversion
  print("Uppercase: ${concatenated.toUpperCase()}");
  print("Lowercase: ${concatenated.toLowerCase()}");

  // Reverse the string
  String reversed = concatenated.split('').reversed.join('');
  print("Reversed: $reversed");

  // Length of the string
  print("Length of concatenated string: ${concatenated.length}");
}



void collectionsDemo() {
  // List
  List<String> fruits = ["Apple", "Banana", "Orange"];
  fruits.add("Mango");
  fruits.remove("Banana");
  print("List of fruits: $fruits");

  // Iterating over List
  print("Fruits in the list:");
  for (var fruit in fruits) {
    print(fruit);
  }

  // Set (Unique items)
  Set<int> numbers = {1, 2, 3, 3, 4};
  numbers.add(5);
  numbers.remove(1);
  print("Set of numbers: $numbers");

  // Iterating over Set
  print("Numbers in the set:");
  for (var number in numbers) {
    print(number);
  }

  // Map (Key-Value pairs)
  Map<String, int> nameAge = {
    "Alice": 25,
    "Bob": 30,
    "Charlie": 35,
  };
  nameAge["Diana"] = 28;
  nameAge.remove("Bob");
  print("Map of name and age: $nameAge");

  // Iterating over Map
  print("Names and ages in the map:");
  nameAge.forEach((name, age) {
    print("$name is $age years old");
  });
}



import 'dart:io';

void fileHandlingDemo() async {
  try {
    // Reading from a file
    File inputFile = File('input.txt');
    String content = await inputFile.readAsString();
    print("File content: $content");

    // Writing to another file
    File outputFile = File('output.txt');
    await outputFile.writeAsString('New data added: $content');
    print("Data written to output.txt");
  } catch (e) {
    print("Error during file operations: $e");
  }
}



void dateTimeDemo() {
  // Current date and time
  DateTime now = DateTime.now();
  print("Current date and time: $now");

  // Add and subtract days
  DateTime futureDate = now.add(Duration(days: 10));
  print("Date after 10 days: $futureDate");

  DateTime pastDate = now.subtract(Duration(days: 5));
  print("Date 5 days ago: $pastDate");

  // Calculate the difference between two dates
  Duration difference = futureDate.difference(now);
  print("Difference in days: ${difference.inDays}");

  // Formatting dates
  print("Formatted date: ${now.year}-${now.month}-${now.day}");
}




import 'dart:io';

void main() async {
  // Step 1: Perform string manipulation
  print("Enter a string to manipulate:");
  String input = stdin.readLineSync() ?? "";

  // String manipulation
  String reversed = input.split('').reversed.join('');
  print("Reversed string: $reversed");

  // Step 2: Store results in a list
  List<String> results = [reversed, "Length: ${input.length}"];
  print("Results stored in a list: $results");

  // Step 3: Write results to a file
  File outputFile = File('user_output.txt');
  await outputFile.writeAsString("User input: $input\nResults: $results\n");

  // Step 4: Log the entry time
  DateTime now = DateTime.now();
  await outputFile.writeAsString("Logged at: $now", mode: FileMode.append);
  print("Data saved to user_output.txt with timestamp.");
}


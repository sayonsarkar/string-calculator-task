int add(String numbers) {
  if (numbers.isEmpty) {
    return 0;
  }

  String delimiter = ',';
  String numbersToProcess = numbers;

  // Check if custom delimiter is specified
  if (numbers.startsWith('//')) {
    int newlineIndex = numbers.indexOf('\n');
    if (newlineIndex != -1) {
      delimiter = numbers.substring(2, newlineIndex);
      numbersToProcess = numbers.substring(newlineIndex + 1);
    }
  }

  // Replace newlines with the delimiter to handle both delimiters
  String normalizedNumbers = numbersToProcess.replaceAll('\n', delimiter);
  List<String> parts = normalizedNumbers.split(delimiter);

  List<int> negativeNumbers = [];
  int sum = 0;

  for (String part in parts) {
    if (part.isNotEmpty) {
      int number = int.parse(part);
      if (number < 0) {
        negativeNumbers.add(number);
      } else {
        sum += number;
      }
    }
  }

  if (negativeNumbers.isNotEmpty) {
    String negativeList = negativeNumbers.join(',');
    throw Exception('negative numbers not allowed $negativeList');
  }

  return sum;
}

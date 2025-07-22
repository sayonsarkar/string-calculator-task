int add(String numbers) {
  if (numbers.isEmpty) {
    return 0;
  }

  // Replace newlines with commas to handle both delimiters
  String normalizedNumbers = numbers.replaceAll('\n', ',');
  List<String> parts = normalizedNumbers.split(',');
  int sum = 0;
  for (String part in parts) {
    sum += int.parse(part);
  }
  return sum;
}

import 'dart:math';

void main() {
  List<int> numbers = generateRandomNumbers(20);

  print('Original List: $numbers');

  Set<int> uniqueNumbers = numbers.toSet();

  print('Unique Numbers: $uniqueNumbers');
}

List<int> generateRandomNumbers(int count) {
  Random random = Random();
  List<int> randomNumbers = [];
  for (int i = 0; i < count; i++) {
    randomNumbers.add(random.nextInt(100));
  }
  return randomNumbers;
}

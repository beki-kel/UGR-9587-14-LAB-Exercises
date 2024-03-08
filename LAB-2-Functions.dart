void main() {
  // Define the range for prime number checking
  int startRange = 10;
  int endRange = 50;

  // Check and print prime numbers within the specified range
  print("Prime numbers between $startRange and $endRange:");
  for (int i = startRange; i <= endRange; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}

bool isPrime(int number) {
  // Function to check if a number is prime
  if (number <= 1) {
    return false;
  }
  
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

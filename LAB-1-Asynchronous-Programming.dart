import 'dart:async';
import 'dart:math';

Future<String> fetchRandomQuote() async {
  // Simulate a network call with a delay
  await Future.delayed(Duration(seconds: 2));

  // List of random quotes
  List<String> quotes = [
    "The only way to do great work is to love what you do. - Steve Jobs",
    "In three words I can sum up everything I've learned about life: it goes on. - Robert Frost",
    "The future belongs to those who believe in the beauty of their dreams. - Eleanor Roosevelt",
    "Success is not final, failure is not fatal: It is the courage to continue that counts. - Winston Churchill",
    "It does not matter how slowly you go as long as you do not stop. - Confucius",
  ];

  // Generate a random index to get a random quote
  int randomIndex = Random().nextInt(quotes.length);

  // Return the random quote
  return quotes[randomIndex];
}

void main() async {
  // Wait for the asynchronous function to complete and print the quote
  fetchRandomQuote().then((quote) {
    print("Random Quote: $quote");
  });
}

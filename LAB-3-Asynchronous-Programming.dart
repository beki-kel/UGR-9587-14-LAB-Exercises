import 'dart:async';

void main() {
  loadAsyncData().then((data) {
    print("Data loaded successfully: $data");
  }).catchError((error) {
    print("Error loading data: $error");
  });
}

Future<List<String>> loadAsyncData() async {
  await Future.delayed(Duration(seconds: 2));

  // Simulated data from the database
  List<String> data = ["Item 1", "Item 2", "Item 3", "Item 4"];

  return data;
}

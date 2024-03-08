import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String filename) async {
  // Create a HttpClient instance
  final client = http.Client();

  try {
    // Send a GET request to the URL
    final response = await client.get(Uri.parse(url));

    // Check for successful response (200 OK)
    if (response.statusCode == 200) {
      // Get the downloaded data as bytes
      final bytes = response.bodyBytes;

      // Create a new file object
      final file = File('$filename');

      // Write the downloaded bytes to the file
      await file.writeAsBytes(bytes);

      print('File downloaded successfully: $filename');
    } else {
      print('Download failed: Status code ${response.statusCode}');
    }
  } catch (error) {
    print('Error downloading file: $error');
  } finally {
    // Close the client connection
    client.close();
  }
}

void main() async {
  // Replace with the URL of the file you want to download
  final url = "https://example.com/file.txt";

  // Specify the desired filename for the downloaded file
  final filename = "downloaded_file.txt";

  await downloadFile(url, filename);
}

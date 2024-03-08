import 'dart:io';

void main() {
  try {
    String contents = readFile('example.txt');
    print('File contents: $contents');
  } catch (e) {
    if (e is FileSystemException) {
      print('Error: ${e.message}');
    } else {
      print('Error: $e');
    }
  }
}

String readFile(String filePath) {
  File file = File(filePath);

  if (!file.existsSync()) {
    throw FileSystemException('File not found', filePath);
  }

  return file.readAsStringSync();
}

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchWeather(String apiKey, String city) async {
  final String apiUrl =
      'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey';

  final http.Response response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to fetch weather data');
  }
}

void displayWeather(Map<String, dynamic> weatherData) {
  if (weatherData.containsKey('main') && weatherData.containsKey('weather')) {
    double temperature = weatherData['main']['temp'];
    String description = weatherData['weather'][0]['description'];

    print('Current Temperature: ${temperature.toString()}°C');
    print('Weather Conditions: $description');
  } else {
    print('Unable to fetch weather data.');
  }
}

Future<void> main() async {
  String apiKey = 'YOUR_OPENWEATHERMAP_API_KEY';
  String city = 'YOUR_CITY_NAME';

  try {
    Map<String, dynamic> weatherData = await fetchWeather(apiKey, city);
    displayWeather(weatherData);
  } catch (e) {
    print('Error fetching weather data: $e');
  }
}

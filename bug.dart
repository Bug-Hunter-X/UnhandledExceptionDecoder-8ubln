```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON array
      final data = jsonDecode(response.body) as List<dynamic>;
      // Accessing elements of the array
      for (var element in data) {
        print(element['name']); // Might throw an exception if 'name' key is missing
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```
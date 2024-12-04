```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;
      for (var element in data) {
        //Check for the presence of the key before accessing it
        if (element.containsKey('name')) {
          print(element['name']);
        } else {
          print('Warning: Missing "name" key in JSON element: $element');
        }
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ui_design/product/model/product_model.dart';

// Define a model for the API data

// Fetch data from the API
Future<List<ProductModel>> fetchUsers() async {
  final response =
      await http.get(Uri.parse('https://fakestoreapi.com/products'));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => ProductModel.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load users');
  }
}

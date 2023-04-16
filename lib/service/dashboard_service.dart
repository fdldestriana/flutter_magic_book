import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/product.dart';
import '../utils/failure.dart';

class DashboardService {
  static Future<List<Product>> getProducts() async {
    Uri url = Uri.parse('https://dummyjson.com/products');
    try {
      var response = await http.get(url);
      List data = json.decode(response.body)['products'];
      return data.map((e) => Product.fromJson(e)).toList();
    } on SocketException catch (_) {
      throw Failure(
          message:
              'There is no internet connection.\n Please check your data.');
    } on HttpException catch (e) {
      throw Failure(message: 'Oopss!!!\n$e.message');
    }
  }
}

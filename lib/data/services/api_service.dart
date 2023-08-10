import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lanka_derana/data/models/ad_post.dart';

class ApiService {
  static const String baseUrl = 'https://lankaderana.lk/wp-json/wp/v2';

  static Future<List<AdPost>> fetchAdPosts() async {
    final response = await http.get(Uri.parse('$baseUrl/ad_post'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((data) => AdPost.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load ad posts');
    }
  }
}

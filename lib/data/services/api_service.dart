import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:internshala_assignment/data/models/post_model.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<List<Post>> getPosts() async {
    var endpoint = 'https://internshala.com/flutter_hiring/search';
    final response = await _dio.get(endpoint);
    var data =
        jsonDecode(response.data)['internships_meta'] as Map<String, dynamic>;
    return data.values.map((json) => Post.fromMap(json)).toList();
  }
}

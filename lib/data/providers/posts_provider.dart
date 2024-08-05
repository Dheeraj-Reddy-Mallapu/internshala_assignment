import 'package:flutter/foundation.dart';
import 'package:internshala_assignment/data/models/post_model.dart';
import 'package:internshala_assignment/data/services/api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'posts_provider.g.dart';

@riverpod
class Posts extends _$Posts {
  final ApiService _apiService = ApiService();
  List<Post> _originalPosts = [];

  @override
  List<Post> build() => [];

  Future<void> fetchUsers() async {
    try {
      _originalPosts = await _apiService.getPosts();
      state = _originalPosts;
    } catch (e) {
      if (kDebugMode) print(e.toString());
      // Handle error
    }
  }

  filterByDuration(String duration) {
    List<Post> newList = List.from(state);
    newList = newList.where((e) => e.duration == duration).toList();

    state = newList;
  }

  filterByCity(String city) {
    List<Post> filteredPosts = [];
    for (Post post in state) {
      for (String location in post.locationNames) {
        if (city == location) filteredPosts.add(post);
      }
    }

    state = filteredPosts;
  }

  filterByProfile(String profile) {
    List<Post> filteredPosts = [];
    for (Post post in state) {
      if (profile == post.profileName) filteredPosts.add(post);
    }

    state = filteredPosts;
  }

  clearAllFilters() => state = _originalPosts;
}

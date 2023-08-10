import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lanka_derana/data/models/ad_post.dart';
import 'package:lanka_derana/data/services/api_service.dart';

final adPostProvider = FutureProvider<List<AdPost>>((ref) async {
  // Fetch your ad posts here using your ApiService
  final adPosts = await ApiService.fetchAdPosts();
  return adPosts;
});

import 'package:flutter_news_app/models/category_news_model.dart';
import 'package:flutter_news_app/models/news_channels_headline_model.dart';
import 'package:flutter_news_app/repository/news_repository.dart';

class NewsViewModel {
  final _repo = NewsRepository();
  Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadlinesApi(
      String channelName) async {
    final response = await _repo.fetchNewsChannelHeadlinesApi(channelName);
    return response;
  }

  Future<CategoryNewsModel> fetchCategoryNewsApi(String channelName) async {
    final response = await _repo.fetchCategoryNewsApi(channelName);
    return response;
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/articles.dart';
import '../secrets.dart';

class News {
  List<Article> news = [];

  Future<void> getNews() async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=in&excludeDomains=stackoverflow.com&sortBy=publishedAt&language=en&apiKey=${apiKey}";

    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          Article article = Article(
            title: element['title'].toString(),
            author: element['author'].toString(),
            description: element['description'].toString(),
            urlToImage: element['urlToImage'].toString(),
            publshedAt: DateTime.parse(element['publishedAt']),
            content: element["content"].toString(),
            articleUrl: element["url"].toString(),
          );
          news.add(article);
        }
      });
    }
  }
}

class NewsForCategorie {
  List<Article> news = [];

  Future<void> getNewsForCategory(String category) async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=${apiKey}";

    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          Article article = Article(
            title: element['title'].toString(),
            author: element['author'].toString(),
            description: element['description'].toString(),
            urlToImage: element['urlToImage'].toString(),
            publshedAt: DateTime.parse(element['publishedAt']),
            content: element["content"].toString(),
            articleUrl: element["url"].toString(),
          );
          news.add(article);
        }
      });
    }
  }
}

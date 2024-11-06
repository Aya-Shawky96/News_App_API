import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/news_provider.dart';
import '../widgets/news_item.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News",
          style: TextStyle(color: const Color.fromARGB(255, 134, 124, 14), fontWeight: FontWeight.bold,fontSize: 40),
        ),
        centerTitle: true,
      ),
      body: Consumer<NewsProvider>(builder: (context, value, child) {
        var newsModel = value.data;
        if (newsModel == null) {
          value.getNews();
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.separated(
            itemCount: newsModel.news.length,
            itemBuilder: (context, index) => NewsItem(
              image: newsModel.news[index]["urlToImage"],
              title: newsModel.news[index]["title"],
              description: newsModel.news[index]["description"],
              content: newsModel.news[index]["content"], // Pass the content
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
          );
        }
      }),
    );
  }
}

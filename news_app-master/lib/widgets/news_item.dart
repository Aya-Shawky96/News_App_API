import 'package:flutter/material.dart';
import '../screens/news_details.dart'; // Import the NewsDetailPage

class NewsItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String content; // Add content parameter

  const NewsItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.content, // Receive content
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to NewsDetailPage with the content
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsDetailPage(
              title: title,
              description: description,
              content: content, // Pass the content
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          shadowColor: Colors.black,
          elevation: 35,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.network(image),
                SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(description),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

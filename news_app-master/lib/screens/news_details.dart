import 'package:flutter/material.dart';

class NewsDetailPage extends StatelessWidget {
  final String title;
  final String description;
  final String content;

  const NewsDetailPage({
    super.key,
    required this.title,
    required this.description,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          shadowColor: Colors.black,
          elevation: 35,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                Text(description,
                    style: TextStyle(fontSize: 16, color: Colors.grey)),
                SizedBox(height: 20),
                Text(content), // Show the content from JSON
              ],
            ),
          ),
        ),
      ),
    );
  }
}






 
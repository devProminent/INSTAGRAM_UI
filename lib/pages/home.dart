import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/utilities/post.dart';
import 'package:instagram_ui/pages/utilities/stories.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'Tokyo',
    'Nairobi',
    'Berlin',
    'Alturo',
    'Professor',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: (){},
                ),
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share)
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //stories
          Container(
              height: 95,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return BubbleStories(text: people[index]);
                  })),

          // Post
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPost(
                    name: people[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

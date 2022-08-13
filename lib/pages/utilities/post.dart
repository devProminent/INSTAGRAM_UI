import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;

  const UserPost({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //profile photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        Container(
          height: 350,
          color: Colors.grey[300],
        ),

        // below user post -> bottoms and comments
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_outline),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark_add_outlined),
            ],
          ),
        ),

        //comments liked by...
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text(
                'others',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),

        //caption..
        Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 2),
            child: RichText(
                text:
                    TextSpan(style: TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: name, style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                  text:
                      'The scene is awesome bothe from the beginning to the end..')
            ]))),
      ],
    );
  }
}

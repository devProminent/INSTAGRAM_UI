import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/utilities/account_tab1.dart';
import 'package:instagram_ui/pages/utilities/account_tab2.dart';
import 'package:instagram_ui/pages/utilities/account_tab3.dart';
import 'package:instagram_ui/pages/utilities/account_tab4.dart';
import 'package:instagram_ui/pages/utilities/stories.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10, bottom: 10, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //profile picture
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                ),

                // number of post, follower and following
                Column(
                  children: [
                    Text(
                      '250',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text('Posts'),
                  ],
                ),

                Column(
                  children: [
                    Text(
                      '5000',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text('Followers'),
                  ],
                ),

                Column(
                  children: [
                    Text(
                      '40',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text('Following'),
                  ],
                ),
              ],
            ),
          ),

          //name and bio
          Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('devProminent',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Text('I develop mobile application'),
                ),
                Text(
                  'github.com/devProminent/',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          padding: EdgeInsets.all(8),
                          child: Text('Edit Profile'),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          )),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                        padding: EdgeInsets.all(8),
                        child: Text('Ad Tools'),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                        padding: EdgeInsets.all(8),
                        child: Text('Insights'),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                ),
              ],
            ),
          ),

          //Stories

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BubbleStories(text: 'Story 1'),
                BubbleStories(text: 'Story 2'),
                BubbleStories(text: 'Story 3'),
                BubbleStories(text: 'Story 4')
              ],
            ),
          ),

          TabBar(tabs: [
            Tab(
              icon: Icon(Icons.grid_3x3_outlined),
            ),
            Tab(
              icon: Icon(Icons.video_call),
            ),
            Tab(
              icon: Icon(Icons.shop),
            ),
            Tab(
              icon: Icon(Icons.person),
            )
          ]),

          Expanded(
              child: TabBarView(children: [
            AccountTab1(),
            AccountTab2(),
            AccountTab3(),
            AccountTab4()
          ]))
        ],
      )),
    );
  }
}

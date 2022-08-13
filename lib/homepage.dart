import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/favorite.dart';
import 'package:instagram_ui/pages/home.dart';
import 'package:instagram_ui/pages/profile.dart';
import 'package:instagram_ui/pages/reels.dart';
import 'package:instagram_ui/pages/search.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

//navigate around the bottom nav bar
class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //different pages to navigate to
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserFavorite(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined), label: 'reels'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_add_alt), label: 'person'),
        ],
      ),
    );
  }
}

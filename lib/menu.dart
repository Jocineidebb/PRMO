import 'package:flutter/material.dart';
import 'package:mobile/profile.dart';
import 'package:mobile/stop_watch.dart';
import 'package:mobile/graphics.dart';
import 'package:mobile/sticker_album.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _actualIndex = 0;
  final List<Widget> _screens = [
    HomePage(),
    Graphics(),
    StickerAlbum(),
    UserProfile(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _actualIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_actualIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 32,
        backgroundColor: Color(0xFFFcee8b7),
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _actualIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.timer_outlined, color: Colors.grey),
            label: '',
            activeIcon: Icon(Icons.timer, color: Colors.grey),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rocket_launch_outlined, color: Colors.grey),
            label: '',
            activeIcon: Icon(Icons.rocket_launch, color: Colors.grey),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book, color: Colors.grey),
            label: '',
            activeIcon: Icon(Icons.menu_book_outlined, color: Colors.grey),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, color: Colors.grey),
            label: '',
            activeIcon: Icon(Icons.person, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
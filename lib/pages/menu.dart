import 'package:flutter/material.dart';
import 'package:mobile/pages/language.dart';
import 'package:mobile/pages/profile.dart';
import 'package:mobile/pages/stop_watch.dart';
import 'package:mobile/pages/graphics.dart';
import 'package:mobile/pages/sticker_album.dart';
import 'package:mobile/pages/about.dart';

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
    Album(),
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
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'StudlyBasis',
          style: TextStyle(
            fontFamily: 'Pacifico-Regular',
            fontSize: 28,
            color: Colors.black12,
          ),
        ),
        toolbarHeight: 120,
        backgroundColor: Color(0xFFFcee8b7),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color(0xfffcee8b7),
              ),
              accountEmail: Text(
                "user@mail.com",
                style: TextStyle(
                  fontFamily: 'Heebo',
                  color: Colors.black,
                ),
              ),
              accountName: Text(
                "Nome",
                style: TextStyle(
                  fontFamily: 'Heebo',
                  color: Colors.black,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrmW9oJivj0HJAHnuEXy2eEcmErP8YOx1vxQ&usqp=CAU")),
            ),
            ListTile(
              leading: Icon(Icons.border_color),
              title: Text("Idioma"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Language()));
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Sobre"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => About()));
              },
            ),
            ListTile(
              leading: Icon(Icons.reply),
              title: Text("Sair"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
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

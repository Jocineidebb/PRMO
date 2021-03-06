import 'package:flutter/material.dart';
import 'package:mobile/perfil.dart';
import 'package:mobile/principal.dart';
import 'package:mobile/sla.dart';
import 'package:mobile/teste.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  int _actualIndex = 0;
  final List<Widget> _screens = [
    HomePage(),
    Teste(),
    Sla(),
    Perfil(),
  ];

  void onTabTapped (int index) {
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
            icon: Icon(Icons.menu_book_outlined, color: Colors.grey),
            label: '',
            activeIcon: Icon(Icons.menu_book, color: Colors.grey),
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

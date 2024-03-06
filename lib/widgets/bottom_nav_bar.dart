import 'package:flutter/material.dart';
import 'package:flutter_dating_app/screens/screens.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromRGBO(236, 236, 236, 1),
        currentIndex: index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color.fromRGBO(187, 37, 74, 1),
        unselectedItemColor: Colors.black.withAlpha(100),
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                icon: const Icon(
                  Icons.home,
                  size: 30,
                )),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, MatchesScreen.routeName);
              },
              icon: const Icon(
                Icons.favorite,
                size: 30,
              ),
            ),
            label: 'Match',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, ChatScreen.routeName);
              },
              icon: const Icon(
                Icons.chat,
                size: 30,
              ),
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, UserScreen.routeName);
              },
              icon: const Icon(
                Icons.person,
                size: 30,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

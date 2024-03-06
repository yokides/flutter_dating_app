import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class MatchesScreen extends StatelessWidget {
  static const String routeName = '/Matches';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => MatchesScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Matches')),
      bottomNavigationBar: const BottomNavBar(index: 0),
    );
  }
}

import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class UserScreen extends StatelessWidget {
  static const String routeName = '/user';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => UserScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User')),
      bottomNavigationBar: const BottomNavBar(index: 0),
    );
  }
}

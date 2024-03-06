import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class ChatScreen extends StatelessWidget {
  static const String routeName = '/chat';

  const ChatScreen({super.key});

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const ChatScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat')),
      bottomNavigationBar: const BottomNavBar(index: 0),
    );
  }
}

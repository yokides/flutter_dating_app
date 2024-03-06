// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dating_app/blocs/swipe/swipe_bloc.dart';
import 'package:flutter_dating_app/models/models.dart';

import 'package:flutter_dating_app/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/';

  // ignore: use_super_parameters
  const HomeScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Draggable _draggable;
  // ignore: unused_field
  late UserCard _userCard;

  final int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      bottomNavigationBar: const BottomNavBar(index: 0),
      body: BlocBuilder<SwipeBloc, SwipeState>(builder: (context, state) {
        if (state is SwipeLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is SwipeLoaded) {
          if (_currentIndex >= state.users.length) {
            // Load more users
            context.read<SwipeBloc>().add(LoadUsersEvent(users: User.users));
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          _draggable = Draggable(
            // ignore: sort_child_properties_last
            child: _userCard = UserCard(user: state.users[_currentIndex]),
            feedback: UserCard(user: state.users[_currentIndex]),
            childWhenDragging: UserCard(user: state.users[_currentIndex + 1]),
            onDragEnd: (drag) {
              if (drag.velocity.pixelsPerSecond.dx < 0) {
                if (_currentIndex > 0) {
                  // Swipe left
                  context
                      .read<SwipeBloc>()
                      .add(SwipeLeftEvent(user: state.users[_currentIndex]));
                  print('Swiped left');
                } else {
                  // Load more users
                  context
                      .read<SwipeBloc>()
                      .add(LoadUsersEvent(users: state.users));
                }
              } else {
                if (_currentIndex < state.users.length - 1) {
                  // Swipe right
                  context
                      .read<SwipeBloc>()
                      .add(SwipeRightEvent(user: state.users[_currentIndex]));
                  print('Swiped right');
                } else {
                  // Load more users
                  context
                      .read<SwipeBloc>()
                      .add(LoadUsersEvent(users: state.users));
                }
              }
              setState(() {
                _currentIndex + 1;
              });
            },
          );
          return Column(
            children: [
              _draggable,
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 50,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ChoiceButton(
                        width: 78,
                        height: 78,
                        size: 30,
                        hasGradient: false,
                        color: Color.fromRGBO(242, 113, 33, 1),
                        icon: Icons.clear_rounded),
                    ChoiceButton(
                        width: 99,
                        height: 99,
                        size: 51,
                        hasGradient: true,
                        color: Colors.white,
                        icon: Icons.favorite),
                    ChoiceButton(
                        width: 78,
                        height: 78,
                        size: 30,
                        hasGradient: false,
                        color: Color.fromRGBO(138, 35, 135, 1),
                        icon: Icons.star),
                  ],
                ),
              ),
            ],
          );
        } else {
          return const Text('Something went wrong.');
        }
      }),
    );
  }
}

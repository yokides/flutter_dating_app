import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
import 'dart:async';
import 'package:flutter_dating_app/models/models.dart';

part 'swipe_event.dart';
part 'swipe_state.dart';

class SwipeBloc extends Bloc<SwipeEvent, SwipeState> {
  SwipeBloc() : super(SwipeLoading()) {
    on<LoadUsersEvent>(_onSwipeLoadedEvent);
    on<SwipeLeftEvent>(_onSwipeLeftEvent);
    on<SwipeRightEvent>(_onSwipeRightEvent);
  }

  Future<void> _onSwipeLoadedEvent(
    LoadUsersEvent event,
    Emitter<SwipeState> emit,
  ) async {
    try {
      final users = await _getUsers();
      emit(SwipeLoaded(users: users));
    } catch (e) {
      emit(SwipeError());
    }
  }

  void _onSwipeLeftEvent(
    SwipeLeftEvent event,
    Emitter<SwipeState> emit,
  ) {
    final updatedUsers = (state as SwipeLoaded)
        .users
        .where((user) => user != event.user)
        .toList();
    if (updatedUsers.isNotEmpty) {
      emit(SwipeLoaded(users: updatedUsers));
    } else {
      // Load more users
      add(LoadUsersEvent(users: User.users));
    }
  }

  void _onSwipeRightEvent(
    SwipeRightEvent event,
    Emitter<SwipeState> emit,
  ) {
    final updatedUsers = (state as SwipeLoaded)
        .users
        .where((user) => user != event.user)
        .toList();
    if (updatedUsers.isNotEmpty) {
      emit(SwipeLoaded(users: updatedUsers));
    } else {
      // Load more users
      add(LoadUsersEvent(users: User.users));
    }
  }

  Future<List<User>> _getUsers() async {
    await Future.delayed(Duration(seconds: 2));
    return User.users;
  }
}

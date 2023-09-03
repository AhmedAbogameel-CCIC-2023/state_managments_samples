import 'package:counter_app/views/nav_bar/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavBarCubit extends Cubit<NavBarStates> {
  NavBarCubit() : super(NavBarInit());

  int currentIndex = 0;

  void changeIndex(int value) {
    currentIndex = value;
    emit(NavBarInit());
  }

}
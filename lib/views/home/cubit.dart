import 'package:counter_app/views/home/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInit());

  int counter = 0;

  void plus() async {
    counter++;
    emit(HomeInit());
  }

  void minus() async {
    counter--;
    emit(HomeInit());
  }

  void reset() async {
    counter = 0;
    emit(HomeInit());
  }
}


import 'package:counter_app/views/register/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super (RegisterInit());

  bool agreedToTermsAndConditions = false;

  void toggleTermsAndConditions({bool? value}) {
    agreedToTermsAndConditions = value ?? !agreedToTermsAndConditions;
    emit(RegisterInit());
  }

}
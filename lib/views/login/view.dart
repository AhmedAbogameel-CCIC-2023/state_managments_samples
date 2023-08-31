import 'package:counter_app/views/home/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: BlocProvider.of<HomeCubit>(context).reset,
          child: Icon(Icons.lock_reset),
        ),
      ),
    );
  }
}

import 'package:counter_app/views/home/cubit.dart';
import 'package:counter_app/views/login/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HomeCubit>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: cubit.plus,
              child: Icon(Icons.add),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: cubit.minus,
              child: Icon(Icons.remove),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginView();
                    },
                  ),
                );
              },
              child: Icon(Icons.arrow_right_alt),
            ),
          ],
        ),
      ),
    );
  }
}

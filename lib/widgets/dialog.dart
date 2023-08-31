import 'package:counter_app/views/register/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({super.key, required this.cubit});

  final RegisterCubit cubit;

  static Future<dynamic> show(BuildContext context, RegisterCubit cubit) {
    return showDialog(
      context: context,
      builder: (_) => AppDialog(cubit: cubit),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Terms & Conditions'),
            ElevatedButton(
              onPressed: () {
                cubit.toggleTermsAndConditions(value: true);
                Navigator.pop(context);
              },
              child: Text('Agree'),
            ),
            ElevatedButton(
              onPressed: () {
                cubit.toggleTermsAndConditions(value: false);
                Navigator.pop(context);
              },
              child: Text('Decline'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:counter_app/views/register/cubit.dart';
import 'package:counter_app/views/register/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/dialog.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: BlocBuilder<RegisterCubit, RegisterStates>(
            builder: (context, state) {
              final cubit = BlocProvider.of<RegisterCubit>(context);
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: cubit.agreedToTermsAndConditions ? () {} : null,
                    child: Text('Sign up'),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        value: cubit.agreedToTermsAndConditions,
                        onChanged: (v) => cubit.toggleTermsAndConditions(),
                      ),
                      Text('Agree to'),
                      TextButton(
                        onPressed: () {
                          AppDialog.show(context, cubit);
                        },
                        child: Text('Terms & Conditions'),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

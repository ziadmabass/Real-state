import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/cubit/cubit_cubit.dart';

class Darkmode extends StatelessWidget {
  const Darkmode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: AppColors.secandary,
          child: BlocBuilder<CubitCubit, CubitState>(
                builder: (context, state) {
                  return Switch(
                    value: CubitCubit.get(context).isDark,
                    onChanged: (value) {
                      CubitCubit.get(context).changeMode();
                    },
                  );
                },
              ), 
        ),
      ),
    );
  }
}
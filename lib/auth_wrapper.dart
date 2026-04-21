import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:familyapp/features/auth/presentation/cubit/auth_state.dart';
import 'package:familyapp/features/family/presentation/screens/family_screen.dart';
import 'package:familyapp/features/student/presentation/screens/student_screen.dart';
import 'package:familyapp/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthLoading) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator(color: primary)),
          );
        }

        if (state is AuthSuccess) {
          final type = state.authResponse.data?.user.type ?? "";

          if (type.toLowerCase().contains('family')) {
            return const FamilyScreen();
          } else {
            return StudentScreen(id: state.authResponse.data!.user.relatedId);
          }
        }

        return const StartScreen();
      },
    );
  }
}

import 'package:cartify/core/utils/app_snack_bars.dart';
import 'package:cartify/core/widgets/custom_elevated_button.dart';
import 'package:cartify/features/auth/data/models/login_request_model.dart';
import 'package:cartify/features/auth/presentation/cubit/login/login_cubit.dart';
import 'package:cartify/features/auth/presentation/cubit/login/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.formKey,
    required this.email,
    required this.password,
  });

  final GlobalKey<FormState> formKey;
  final ValueGetter<String?> email;
  final ValueGetter<String?> password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            AppSnackBars.showSuccessSnackBar(
              context: context,
              message: state.message,
            );
            // TODO: navigate to home screen
          } else if (state is LoginFailure) {
            AppSnackBars.showErrorSnackBar(
              context: context,
              message: state.error,
            );
          }
        },
        builder: (context, state) {
          return CustomElevatedButton(
            isLoading: state is LoginLoading,
            text: "Sign In",
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                context.read<LoginCubit>().login(
                      LoginRequestModel(
                        email: email(),
                        password: password(),
                      ),
                    );
              }
            },
          );
        },
      ),
    );
  }
}

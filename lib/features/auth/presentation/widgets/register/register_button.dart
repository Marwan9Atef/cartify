import 'package:cartify/core/utils/app_snack_bars.dart';
import 'package:cartify/core/widgets/custom_elevated_button.dart';
import 'package:cartify/features/auth/data/models/register_request_model.dart';
import 'package:cartify/features/auth/presentation/cubit/register/register_cubit.dart';
import 'package:cartify/features/auth/presentation/cubit/register/register_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
    required this.formKey,
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
  });

  final GlobalKey<FormState> formKey;
  final ValueGetter<String?> name;
  final ValueGetter<String?> email;
  final ValueGetter<String?> phone;
  final ValueGetter<String?> password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {
          if (state is RegisterSuccess) {
            AppSnackBars.showSuccessSnackBar(
              context: context,
              message: state.message,
            );
       
          } else if (state is RegisterFailure) {
            AppSnackBars.showErrorSnackBar(
              context: context,
              message: state.error,
            );
          }
        },
        builder: (context, state) {
          return CustomElevatedButton(
            isLoading: state is RegisterLoading,
            text: "Create Account",
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                context.read<RegisterCubit>().register(
                      RegisterRequestModel(
                        name: name(),
                        email: email(),
                        phone: phone(),
                        password: password(),
                        rePassword: password(),
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

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:cartify/features/auth/data/models/login_request_model.dart';
import 'package:cartify/features/auth/domain/repo/auth_repo.dart';
import 'package:cartify/features/auth/presentation/cubit/login/login_states.dart';

@injectable
class LoginCubit extends Cubit<LoginStates> {
  final AuthRepo _authRepo;

  LoginCubit({required AuthRepo authRepo})
      : _authRepo = authRepo,
        super(LoginInitial());

  void login(LoginRequestModel loginRequestModel) async {
    emit(LoginLoading());
    final result = await _authRepo.login(loginRequestModel);
    result.fold(
      (failure) => emit(LoginFailure(error: failure.message)),
      (success) => emit(LoginSuccess(message: success.message!)),
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:cartify/features/auth/data/models/register_request_model.dart';
import 'package:cartify/features/auth/domain/repo/auth_repo.dart';
import 'package:cartify/features/auth/presentation/cubit/register/register_states.dart';

@injectable
class RegisterCubit extends Cubit<RegisterStates> {
  final AuthRepo _authRepo;

  RegisterCubit({required AuthRepo authRepo})
      : _authRepo = authRepo,
        super(RegisterInitial());

  void register(RegisterRequestModel registerRequestModel) async {
    emit(RegisterLoading());
    final result = await _authRepo.register(registerRequestModel);
    result.fold(
      (failure) => emit(RegisterFailure(error: failure.message)),
      (success) => emit(RegisterSuccess(message: success.message!)),
    );
  }
}

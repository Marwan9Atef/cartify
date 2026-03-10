import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:cartify/core/error/app_exception.dart';
import 'package:cartify/core/failure/failure.dart';
import 'package:cartify/features/auth/data/models/login_request_model.dart';
import 'package:cartify/features/auth/data/models/login_response_model.dart';
import 'package:cartify/features/auth/data/service/local/auth_local_service.dart';
import 'package:cartify/features/auth/data/service/remote/auth_remote_service.dart';
import 'package:cartify/features/auth/domain/repo/auth_repo.dart';

@LazySingleton(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final AuthRemoteService _remoteService;
  final AuthLocalService _localService;

  AuthRepoImpl(this._remoteService, this._localService);

  @override
  Future<Either<Failure, LoginResponseModel>> login(
    LoginRequestModel loginRequestModel,
  ) async {
    try {
      final response = await _remoteService.login(loginRequestModel);
      await _localService.setToken(response.token);
      return Right(response);
    } on AppException catch (exception) {
      return Left(Failure(exception.message));
    }
  }
}

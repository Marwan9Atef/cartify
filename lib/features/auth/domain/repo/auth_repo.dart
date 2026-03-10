import 'package:dartz/dartz.dart';
import 'package:cartify/core/failure/failure.dart';
import 'package:cartify/features/auth/data/models/login_request_model.dart';
import 'package:cartify/features/auth/data/models/login_response_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, LoginResponseModel>> login(LoginRequestModel loginRequestModel);
}

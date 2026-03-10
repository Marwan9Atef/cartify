import 'package:cartify/features/auth/data/models/login_request_model.dart';
import 'package:cartify/features/auth/data/models/login_response_model.dart';
import 'package:cartify/features/auth/data/models/register_request_model.dart';
import 'package:cartify/features/auth/data/models/register_response_model.dart';

abstract class AuthRemoteService {
  Future<LoginResponseModel> login(LoginRequestModel loginRequestModel);
  Future<RegisterResponseModel> register(RegisterRequestModel registerRequestModel);
}

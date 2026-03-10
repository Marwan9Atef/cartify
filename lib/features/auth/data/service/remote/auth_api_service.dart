import 'package:injectable/injectable.dart';
import 'package:cartify/core/constant/api_constant.dart';
import 'package:cartify/core/error/app_exception.dart';
import 'package:cartify/core/network/api_client.dart';
import 'package:cartify/features/auth/data/models/login_request_model.dart';
import 'package:cartify/features/auth/data/models/login_response_model.dart';
import 'package:cartify/features/auth/data/service/remote/auth_remote_service.dart';

@LazySingleton(as: AuthRemoteService)
class AuthApiService implements AuthRemoteService {
  final ApiClient _apiClient;

  AuthApiService(this._apiClient);

  @override
  Future<LoginResponseModel> login(LoginRequestModel loginRequestModel) async {
    try {
      final response = await _apiClient.post(
        ApiConstant.loginEndpoint,
        data: loginRequestModel.toJson(),
      );
      return LoginResponseModel.fromJson(response.data);
    } catch (exception) {
      final message = extractDioErrorMessage(exception);
      throw RemoteException(message ?? 'An error occurred during login');
    }
  }
}

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:cartify/core/constant/local_constant.dart';
import 'package:cartify/core/error/app_exception.dart';
import 'package:cartify/features/auth/data/service/local/auth_local_service.dart';

@LazySingleton(as: AuthLocalService)
class AuthLocalSecureStorageService implements AuthLocalService {
  final FlutterSecureStorage _secureStorage;

  AuthLocalSecureStorageService(this._secureStorage);

  @override
  Future<String?> getAccessToken() async {
    try {
      return await _secureStorage.read(key: LocalConstant.accessTokenKey);
    } catch (exception) {
      throw const LocalException('Failed to retrieve access token');
    }
  }

  @override
  Future<void> setToken(String? accessToken) async {
    try {
      await _secureStorage.write(
        key: LocalConstant.accessTokenKey,
        value: accessToken,
      );
    } catch (exception) {
      throw const LocalException('Failed to save token');
    }
  }

  @override
  Future<void> removeToken() async {
    try {
      await _secureStorage.delete(key: LocalConstant.accessTokenKey);
    } catch (exception) {
      throw const LocalException('Failed to remove token');
    }
  }





  @override
  Future<void> removeUserInfo() async {
    try {
      await _secureStorage.delete(key: LocalConstant.accessTokenKey);

    } catch (exception) {
      throw const LocalException('Failed to remove user info');
    }
  }
}

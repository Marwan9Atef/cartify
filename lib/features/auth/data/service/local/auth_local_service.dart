abstract class AuthLocalService {
  Future<void> setToken(String? accessToken);
  Future<String?> getAccessToken();
  Future<void> removeToken();
  Future<void> removeUserInfo();
}

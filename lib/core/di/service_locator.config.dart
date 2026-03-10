// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cartify/core/di/register_module.dart' as _i713;
import 'package:cartify/core/network/api_client.dart' as _i30;
import 'package:cartify/features/auth/data/repo/auth_repo_impl.dart' as _i39;
import 'package:cartify/features/auth/data/service/local/auth_local_secure_storage_service.dart'
    as _i736;
import 'package:cartify/features/auth/data/service/local/auth_local_service.dart'
    as _i638;
import 'package:cartify/features/auth/data/service/remote/auth_api_service.dart'
    as _i577;
import 'package:cartify/features/auth/data/service/remote/auth_remote_service.dart'
    as _i495;
import 'package:cartify/features/auth/domain/repo/auth_repo.dart' as _i27;
import 'package:cartify/features/auth/presentation/cubit/login/login_cubit.dart'
    as _i235;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => registerModule.secureStorage,
    );
    gh.lazySingleton<_i30.ApiClient>(() => _i30.ApiClient());
    gh.lazySingleton<_i638.AuthLocalService>(
      () =>
          _i736.AuthLocalSecureStorageService(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i495.AuthRemoteService>(
      () => _i577.AuthApiService(gh<_i30.ApiClient>()),
    );
    gh.lazySingleton<_i27.AuthRepo>(
      () => _i39.AuthRepoImpl(
        gh<_i495.AuthRemoteService>(),
        gh<_i638.AuthLocalService>(),
      ),
    );
    gh.factory<_i235.LoginCubit>(
      () => _i235.LoginCubit(authRepo: gh<_i27.AuthRepo>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i713.RegisterModule {}

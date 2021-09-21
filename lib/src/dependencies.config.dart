// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i6;
import 'package:egresocovid19/src/data/data_sources/client_api.dart' as _i32;
import 'package:egresocovid19/src/data/repositories/auth_repository.dart'
    as _i40;
import 'package:egresocovid19/src/data/repositories/autocomplete_repository.dart'
    as _i33;
import 'package:egresocovid19/src/data/repositories/locale_repository.dart'
    as _i11;
import 'package:egresocovid19/src/data/repositories/patient_repository.dart'
    as _i35;
import 'package:egresocovid19/src/data/repositories/province_repository.dart'
    as _i37;
import 'package:egresocovid19/src/data/repositories/theme_repository.dart'
    as _i21;
import 'package:egresocovid19/src/data/utils/hive_oauth_storage.dart' as _i25;
import 'package:egresocovid19/src/dependencies.dart' as _i43;
import 'package:egresocovid19/src/domain/entities/entities.dart' as _i18;
import 'package:egresocovid19/src/domain/repositories/repositories.dart'
    as _i10;
import 'package:egresocovid19/src/domain/services/auth_service.dart' as _i41;
import 'package:egresocovid19/src/domain/services/autocomplete_service.dart'
    as _i34;
import 'package:egresocovid19/src/domain/services/locale_service.dart' as _i12;
import 'package:egresocovid19/src/domain/services/patient_service.dart' as _i36;
import 'package:egresocovid19/src/domain/services/province_service.dart'
    as _i38;
import 'package:egresocovid19/src/domain/services/services.dart' as _i8;
import 'package:egresocovid19/src/domain/services/theme_service.dart' as _i22;
import 'package:egresocovid19/src/presentation/blocs/auth/auth_bloc.dart'
    as _i7;
import 'package:egresocovid19/src/presentation/blocs/home/home_bloc.dart'
    as _i42;
import 'package:egresocovid19/src/presentation/blocs/locale/locale_bloc.dart'
    as _i9;
import 'package:egresocovid19/src/presentation/blocs/login/login_bloc.dart'
    as _i13;
import 'package:egresocovid19/src/presentation/blocs/municipality/municipality_bloc.dart'
    as _i39;
import 'package:egresocovid19/src/presentation/blocs/neighborhood/neighborhood_autocomplete_bloc.dart'
    as _i23;
import 'package:egresocovid19/src/presentation/blocs/pathological_hist/pathologicalhistory_bloc.dart'
    as _i26;
import 'package:egresocovid19/src/presentation/blocs/pathology/pathology_autocomplete_bloc.dart'
    as _i27;
import 'package:egresocovid19/src/presentation/blocs/pathology/pathology_bloc.dart'
    as _i28;
import 'package:egresocovid19/src/presentation/blocs/patient_basic_edit/patient_basic_edit_bloc.dart'
    as _i14;
import 'package:egresocovid19/src/presentation/blocs/patient_create/patient_create_bloc.dart'
    as _i15;
import 'package:egresocovid19/src/presentation/blocs/patient_egreso_edit/patient_egreso_edit_bloc.dart'
    as _i16;
import 'package:egresocovid19/src/presentation/blocs/patient_egreso_edit_form/patient_egreso_edit_form_bloc.dart'
    as _i17;
import 'package:egresocovid19/src/presentation/blocs/patient_view/patient_view_bloc.dart'
    as _i19;
import 'package:egresocovid19/src/presentation/blocs/polyclinic/polyclinic_autocomplete_bloc.dart'
    as _i29;
import 'package:egresocovid19/src/presentation/blocs/popularcouncil/popularcouncil_autocomplete_bloc.dart'
    as _i30;
import 'package:egresocovid19/src/presentation/blocs/surgery/surgery_autocomplete_bloc.dart'
    as _i31;
import 'package:egresocovid19/src/presentation/blocs/theme/theme_bloc.dart'
    as _i20;
import 'package:egresocovid19/src/presentation/utils/app_bloc_observer.dart'
    as _i4;
import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:oauth_dio/oauth_dio.dart'
    as _i24; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.BlocObserver>(() => _i4.AppBlocObserver());
  await gh.factoryAsync<_i5.Box<int>>(() => registerModule.themeBox,
      instanceName: 'theme', preResolve: true);
  await gh.factoryAsync<_i5.Box<String>>(() => registerModule.localeBox,
      instanceName: 'locale', preResolve: true);
  await gh.factoryAsync<_i5.Box<String>>(() => registerModule.oauthBox,
      instanceName: 'oauth', preResolve: true);
  gh.lazySingleton<_i6.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i7.IAuthBloc>(
      () => _i7.AuthBloc(authService: get<_i8.IAuthService>()));
  gh.factory<_i9.ILocaleBloc>(() => _i9.LocaleBloc(get<_i8.ILocaleService>()));
  gh.factory<_i10.ILocaleRepository>(() =>
      _i11.LocaleRepository(get<_i5.Box<String>>(instanceName: 'locale')));
  gh.factory<_i12.ILocaleService>(
      () => _i12.LocaleService(get<_i10.ILocaleRepository>()));
  gh.factory<_i13.ILoginBloc>(
      () => _i13.LoginBloc(authService: get<_i8.IAuthService>()));
  gh.factory<_i14.IPatientBasicEditBloc>(() => _i14.PatientBasicEditBloc());
  gh.factory<_i15.IPatientCreateBloc>(
      () => _i15.PatientCreateBloc(patientService: get<_i8.IPatientService>()));
  gh.factory<_i16.IPatientEgresoEditBloc>(
      () => _i16.PatientEgresoEditBloc(get<_i8.IPatientService>()));
  gh.factoryParam<_i17.IPatientEgresoEditFormBloc, _i18.DischargeDataEntity?,
          dynamic>(
      (initialDischargeData, _) =>
          _i17.PatientEgresoEditFormBloc(initialDischargeData));
  gh.factory<_i19.IPatientViewBloc>(() => _i19.PatientViewBloc());
  gh.factory<_i20.IThemeBloc>(() => _i20.ThemeBloc(get<_i8.IThemeService>()));
  gh.factory<_i10.IThemeRepository>(
      () => _i21.ThemeRepository(get<_i5.Box<int>>(instanceName: 'theme')));
  gh.factory<_i22.IThemeService>(
      () => _i22.ThemeService(get<_i10.IThemeRepository>()));
  gh.factory<_i23.NeighborhoodAutoCompleteBloc>(
      () => _i23.NeighborhoodAutoCompleteBloc(get<_i8.IAutoCompleteService>()));
  gh.lazySingleton<_i24.OAuthStorage>(
      () => _i25.HiveOauthStorage(get<_i5.Box<String>>(instanceName: 'oauth')));
  gh.factory<_i26.PathologicalhistoryBloc>(
      () => _i26.PathologicalhistoryBloc());
  gh.factory<_i27.PathologyAutoCompleteBloc>(
      () => _i27.PathologyAutoCompleteBloc(get<_i8.IAutoCompleteService>()));
  gh.factory<_i28.PathologyBloc>(() => _i28.PathologyBloc());
  gh.factory<_i29.PolyclinicAutoCompleteBloc>(
      () => _i29.PolyclinicAutoCompleteBloc(get<_i8.IAutoCompleteService>()));
  gh.factory<_i30.PopularCouncilAutoCompleteBloc>(() =>
      _i30.PopularCouncilAutoCompleteBloc(get<_i8.IAutoCompleteService>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i31.SurgeryAutoCompleteBloc>(
      () => _i31.SurgeryAutoCompleteBloc(get<_i8.IAutoCompleteService>()));
  gh.lazySingleton<_i32.ClientApi>(() => _i32.ClientApi(get<_i6.Dio>(),
      baseUrl: get<String>(instanceName: 'baseUrl')));
  gh.lazySingleton<_i10.IAutoCompleteRepository>(
      () => _i33.AutoCompleteRepository(get<_i32.ClientApi>()));
  gh.factory<_i34.IAutoCompleteService>(
      () => _i34.AutoCompleteService(get<_i10.IAutoCompleteRepository>()));
  gh.lazySingleton<_i10.IPatientRepository>(
      () => _i35.PatientRepository(get<_i32.ClientApi>()));
  gh.factory<_i36.IPatientService>(
      () => _i36.PatientService(get<_i10.IPatientRepository>()));
  gh.lazySingleton<_i10.IProvinceRepository>(
      () => _i37.ProvinceRepository(get<_i32.ClientApi>()));
  gh.factory<_i38.IProvinceService>(
      () => _i38.ProvinceService(get<_i10.IProvinceRepository>()));
  gh.factory<_i39.MunicipalityBloc>(() =>
      _i39.MunicipalityBloc(provinceService: get<_i38.IProvinceService>()));
  gh.lazySingleton<_i24.OAuth>(() => registerModule.oauth(
      get<String>(instanceName: 'baseUrl'),
      get<_i6.Dio>(),
      get<_i24.OAuthStorage>()));
  gh.lazySingleton<_i10.IAuthRepository>(
      () => _i40.AuthRepository(get<_i24.OAuth>()));
  gh.lazySingleton<_i41.IAuthService>(
      () => _i41.AuthService(authRepository: get<_i10.IAuthRepository>()));
  gh.factory<_i42.IHomeBloc>(() => _i42.HomeBloc(get<_i36.IPatientService>()));
  return get;
}

class _$RegisterModule extends _i43.RegisterModule {}

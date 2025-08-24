import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:rabbitevc/data/api/app_api.dart';
import 'package:rabbitevc/service/api_service/charge_station_service/charge_station_api_service.dart';
import 'package:rabbitevc/service/api_service/payment_service/payment_api_service.dart';
import 'package:rabbitevc/service/api_service/transaction_service/transaction_api_service.dart';
import 'package:rabbitevc/service/api_service/user_service/user_api_service.dart';
import 'package:rabbitevc/service/local_storage/local_storage_service.dart';


final getIt = GetIt.instance;

class DependencyInjection {
  static Future<void> inject() async {
    getIt.registerSingleton(LocalStorageService());
    await getIt.get<LocalStorageService>().initialize();
    final _dio = await AppApi.setup();

    getIt.registerSingleton(UserApiService(_dio));
    getIt.registerSingleton(ChargeStationApiService(_dio));
    getIt.registerSingleton(TransactionApiService(_dio));
    getIt.registerSingleton(PaymentApiService(_dio));


  }
}

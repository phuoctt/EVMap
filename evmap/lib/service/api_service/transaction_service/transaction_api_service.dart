import 'package:dio/dio.dart';
import 'package:rabbitevc/models/base/base_response.dart';
import 'package:rabbitevc/models/charge_station/charge_box_model.dart';
import 'package:rabbitevc/models/charge_station/charge_station_model.dart';
import 'package:rabbitevc/models/charge_station/start_charge_model.dart';
import 'package:rabbitevc/models/history/detail_bill_model.dart';
import 'package:rabbitevc/models/history/history_model.dart';
import 'package:rabbitevc/models/transaction/transaction_model.dart';
import 'package:retrofit/retrofit.dart';

part 'transaction_api_service.g.dart';

@RestApi(baseUrl: '')
abstract class TransactionApiService {
  factory TransactionApiService(Dio dio, {String baseUrl}) =
      _TransactionApiService;

  static const _transactions = 'transactions';

  @POST('$_transactions/remote/start')
  Future<BaseResponse<StartChargeDataModel>> startTxn(@Body() body);

  @POST('$_transactions/remote/stop')
  Future<BaseResponse> stopTxn(@Body() body);

  @POST('$_transactions/remote/stop/force/{transactionId}')
  Future<BaseResponse> stopForce(
      @Path('transactionId') num? transactionId, @Body() body);

  @GET('$_transactions/check/active')
  Future<BaseResponse<TransactionIdModel>> checkActive();

  @GET('$_transactions/check/not-pay')
  Future<BaseResponse<TransactionIdModel>> checkNotPay();

  @GET('$_transactions/{transactionId}')
  Future<BaseResponse<TransactionModel>> detailTransaction(
      @Path('transactionId') num? transactionId);

  @GET('$_transactions/{transactionId}/bill')
  Future<BaseResponse<DetailBillModel>> detailTransactionBill(
      @Path('transactionId') num? transactionId);

  @GET('user-points')
  Future<BaseResponse<ListResponse<HistoryModel>>> historyTransaction({
    @Query('page') num? page,
    @Query('limit') num? limit,
  });

  @GET('charging-bill/{id}')
  Future<BaseResponse<DetailBillModel>> chargingBill(@Path('id') num? billId);

  @POST('charging-bill/{id}/pay')
  Future<BaseResponse> payment(@Path('id') num? idBill);
}

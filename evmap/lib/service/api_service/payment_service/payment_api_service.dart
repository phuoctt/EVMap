import 'package:dio/dio.dart';
import 'package:rabbitevc/data/model/topup_request.dart';
import 'package:rabbitevc/models/base/base_response.dart';
import 'package:rabbitevc/models/payment/paymentl_model.dart';
import 'package:retrofit/retrofit.dart';

part 'payment_api_service.g.dart';

@RestApi(baseUrl: '')
abstract class PaymentApiService {
  factory PaymentApiService(Dio dio, {String baseUrl}) = _PaymentApiService;

  static const _payment = 'payment';

  @POST(_payment)
  Future<BaseResponse<PaymentModel>> topUp(@Body() TopUpRequest request);

  @GET('$_payment/{id}')
  Future<BaseResponse<PaymentModel>> detailPayment(@Path('id') num? paymentId);

  @GET('$_payment/{id}/status')
  Future<BaseResponse<PaymentModel>> paymentStatus(@Path('id') num? paymentId);

}
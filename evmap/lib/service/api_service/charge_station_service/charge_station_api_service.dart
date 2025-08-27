// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:dio/dio.dart';
import 'package:rabbitevc/data/model/booking_request.dart';
import 'package:rabbitevc/features/dashboard/widgets/map_ui.dart';
import 'package:rabbitevc/models/base/base_response.dart';
import 'package:rabbitevc/models/booking/booking_model.dart';
import 'package:rabbitevc/models/booking/reason_model.dart';
import 'package:rabbitevc/models/booking/slot_model.dart';
import 'package:rabbitevc/models/charge_station/charge_box_model.dart';
import 'package:rabbitevc/models/charge_station/charge_station_model.dart';
import 'package:rabbitevc/models/charge_station/charge_type_model.dart';
import 'package:rabbitevc/models/charge_station/connector_type_model.dart';
import 'package:rabbitevc/models/charge_station/direction_model.dart';
import 'package:rabbitevc/models/charge_station/start_charge_model.dart';
import 'package:rabbitevc/models/charging_station/station_model.dart';
import 'package:retrofit/retrofit.dart';

part 'charge_station_api_service.g.dart';

@RestApi(baseUrl: '')
abstract class ChargeStationApiService {
  factory ChargeStationApiService(Dio dio, {String baseUrl}) =
      _ChargeStationApiService;

  static const _chargeStation = 'charge-stations';
  static const _chargeBox = 'charge-box';
  static const _transactions = 'transactions';
  static const _reservation = 'reservation';

  @GET(_chargeStation)
  Future<BaseResponse<ListResponse<ChargeStationModel>>> listChargeStation({
    @Query('latitude') double? lat,
    @Query('longitude') double? long,
    @Query('q') String? keyword,
    @Query('type_id') int? typeId,
    @Query('status_id') int? statusId,
  });

  @GET('$_chargeStation/{id}')
  Future<BaseResponse<ChargeStationModel>> detailChargeStation({
    @Path('id') num? id,
    @Query('latitude') double? lat,
    @Query('longitude') double? long,
  });

  @GET('$_chargeBox/{id}')
  Future<BaseResponse<ChargeBoxModel>> connectors({@Path('id') String? id});

  @GET('$_chargeBox/connector/{qrCode}')
  Future<BaseResponse<ConnectorsModel>> findConnector(
      {@Path('qrCode') String? qrCode});

  @GET(_chargeBox)
  Future<BaseResponse<ListResponse<ChargeBoxModel>>> detailChargeBox({
    @Query('station_id') num? stationId,
  });

  @POST('$_chargeBox/{chargeBoxId}/user-access/{connectorId}')
  Future<BaseResponse> updateUserAccess(
      {@Path('chargeBoxId') String? chargeBoxId,
      @Path('connectorId') num? connectorId});

  @GET('connector-types')
  Future<BaseResponse<List<ChargeTypeModel>>> chargeTypes();

  @GET('connector-types')
  Future<BaseResponse<List<ConnectorTypeModel>>> connectorTypes();

  @GET(
      'https://api.ekgis.vn/v1/route/direction/osm/driving/{myLng},{myLat};{lng},{lat}?api_key=${apiKey}&steps=true&geometries=geojson')
  Future<DirectionResponse> direction({
    @Path('myLat') double? myLat,
    @Path('myLng') double? myLng,
    @Path('lat') double? lat,
    @Path('lng') double? lng,
  });

  @GET('$_chargeBox/{id}/slots')
  Future<BaseResponse<SlotModel>> slots({
    @Path('id') String? id,
    @Query('date_from') DateTime? dateFrom,
    @Query('date_to') DateTime? dateTo,
    @Query('type') String type = 'busy',
  });

  @POST(_reservation)
  Future<BaseResponse<SlotDataModel>> booking(@Body() BookingRequest? request);

  @POST('$_reservation/{reservationId}/cancel-confirm')
  Future<BaseResponse> cancelBooking(@Path('reservationId') num? id);

  @GET(_reservation)
  Future<BaseResponse<ListResponse<BookingModel>>> checkReservation(
      {@Query('advanced_filter') String? advancedFilter = 'start_soon'});

  @GET(_reservation)
  Future<BaseResponse<ListResponse<BookingModel>>> reservationHistory(
      {@Query('page') int? page, @Query('limit') int? limit});

  @GET('masters/reasons')
  Future<BaseResponse<List<ReasonModel>>> reasons();

  @GET('discovery/stations')
  Future<BaseResponse<ListResponse<Station>>> stations({@Query('limit') int? limit});

  @GET('discovery/stations/{id}')
  Future<BaseResponse<Station>> detailStation({@Path('id') num? id});
}

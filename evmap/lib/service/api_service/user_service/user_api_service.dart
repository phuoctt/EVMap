import 'dart:io';

import 'package:dio/dio.dart';
import 'package:rabbitevc/data/model/login_request.dart';
import 'package:rabbitevc/models/base/base_response.dart';
import 'package:rabbitevc/models/feed/feed_model.dart';
import 'package:rabbitevc/models/user/user_model.dart';
import 'package:rabbitevc/models/user/user_point_model.dart';
import 'package:retrofit/retrofit.dart';

part 'user_api_service.g.dart';

@RestApi(baseUrl: '')
abstract class UserApiService {
  factory UserApiService(Dio dio, {String baseUrl}) = _UserApiService;

  static const _auth = 'auth/';

  @POST('$_auth/login')
  Future<BaseResponse<UserModel>> login(@Body() LoginRequest request);

  @POST('$_auth/logout')
  Future<BaseResponse> logout();

  @POST('$_auth/register')
  Future<BaseResponse> register(@Body() LoginRequest request);

  @GET('$_auth/profile')
  Future<BaseResponse<UserModel>> profile();

  @GET('users/point')
  Future<BaseResponse<UserPointModel>> point();

  @GET('feed')
  Future<BaseResponse<ListResponse<FeedModel>>> feed();
}

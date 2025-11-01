import 'package:dio/dio.dart';
// Retrofit package to generate API service code
import 'package:retrofit/retrofit.dart';
import '../../fetures/login/data/models/login_request_body.dart';
import '../../fetures/login/data/models/login_response.dart';
import '../../fetures/sign_up/data/models/sign_up_request_body.dart';
import '../../fetures/sign_up/data/models/sign_up_response.dart';
import 'api_constants.dart';
part 'api_service.g.dart';

// RestApi annotation to define the base URL for the API
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
// ApiService interface to define API endpoints
// this ApiService instead of creating Dio instance and making requests manually
// we define methods that correspond to API endpoints
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // POST request for login endpoint
  @POST(ApiConstants.login)
  // login method takes a LoginRequestBody and returns a Future of LoginResponse
  Future<LoginResponse> login(
      @Body() LoginRequestBody loginRequestBody,
      );
  // POST request for signup endpoint
  @POST(ApiConstants.signup)
  // signup method takes a SignupRequestBody and returns a Future of SignupResponse
  Future<SignupResponse> signup(
      @Body() SignupRequestBody signupRequestBody,
      );
}
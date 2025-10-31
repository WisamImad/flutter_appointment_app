# 🩺 Appointment App – DocDoc

DocDoc is a modern and user-friendly mobile application that helps users book medical appointments quickly and easily — no phone calls or waiting required.
It allows patients to find doctors based on specialty, location, and rating, and schedule appointments with just a few taps.

## 🎨 Login Api
- Created api_constants.dart for storing api endpoints.
- Created api_error_handler.dart for handling api errors.
- Created dio_factory.dart for creating Dio instances.
- Every edite code you must run in terminal "dart run build_runner build --delete-conflicting-outputs" to generate code for login_response.g.dart.
  
     1- login_request_body.dart from @JsonSerializable() for modeling login request body.
  
     2- login_response.dart from @JsonSerializable() for modeling login response.
  
     3- api_error_model.dart from @JsonSerializable() for modeling api error responses.
  
     4- api_result.dart from @Freezed() for modeling api success responses.
  
     5- api_service.dart from @RestApi(baseUrl: ApiConstants.apiBaseUrl) for making api calls.
  
     6- login_state.dart from @Freezed.

- Created login_repo for handling login api calls.
- Created cubit & states for managing login state.
- Using freezed package for cubit states.
- Using GetIt package for dependency injection.
- created login_bloc_listener.dart for handling login state changes in UI.
- created password_validator.dart for validating password input.
- created app_regex.dart for rules when validating inputs

## 📱 UI Screens

<img width="270" height="600" alt="Screenshot_20251031_152258" src="https://github.com/user-attachments/assets/4d9cb9b1-7ba2-4c9e-ac2b-8418bd358982" />

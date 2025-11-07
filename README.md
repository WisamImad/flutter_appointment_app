# 🩺 Appointment App – DocDoc

DocDoc is a modern and user-friendly mobile application that helps users book medical appointments quickly and easily — no phone calls or waiting required.
It allows patients to find doctors based on specialty, location, and rating, and schedule appointments with just a few taps.


<p align="left">
  <img src="https://github.com/user-attachments/assets/3ae2888f-f5b6-4bf3-8c81-48d1410445a1" alt="Wisam Imad Abu Stitan" width="100" height="100" style="border-radius: 50%; margin-right: 20px;" align="left"/>
  <br/>
  <span style="font-size: 20px; font-weight: bold;">Eng. Wisam Imad Abu Stitan</span>  
  <br/>
  <span style="font-size: 16px;">💻 Flutter Developer | 🎨 UI/UX Enthusiast | 📱 IOS Native | 📞 Android Native </span>
  <br/><br/>

  <a href="mailto:wisamimad8@gmail.com">
    <img src="https://img.shields.io/badge/Email-0078D4?style=for-the-badge&logo=gmail&logoColor=white"/>
  </a>
  <a href="https://github.com/WisamImad">
    <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white"/>
  </a>
  <a href="https://wa.me/972595656838" target="_blank">
  <img src="https://img.shields.io/badge/WhatsApp-25D366?style=for-the-badge&logo=whatsapp&logoColor=white"/>
  </a>
  <a href="https://t.me/stxtan">
    <img src="https://img.shields.io/badge/Telegram-229ED9?style=for-the-badge&logo=telegram&logoColor=white"/>
  </a>
</p>
# 🔖 Appointment App

1. ❤️ Splash Screen ✅
2. ❤️ OnBoarding Screen ✅
3. ❤️ Login Screen ✅
4. ❤️ Sign up Screen ✅
5. ❤️ Implement Flutter Flavors 🍃 ✅

## 🎨 Splash Screen
- Added Splash Screen for IOS & Andriod
- Using flutter_native_splash
- Android 12 ablow, created screen 640/640 circle 320 into frame 960/960 becase accepted and show splash on android 12 ablow
- IOS Splash Screen && Android Splash screen

  <img width="270" height="600" alt="Splash Screen ios" src="https://github.com/user-attachments/assets/8dbebdfb-c526-436c-b828-8352a7429549" />
  <img width="270" height="600" alt="Splash Screen android" src="https://github.com/user-attachments/assets/24095fa2-8b12-4a4c-9035-ca9308aba05b" />

## 🎨 OnBoarding Screen
- added images & svgs folder for assets
- added flutter_svg & flutter_screenutil
- made afile for doc app client
- added navegtion extension
- added routing folder that contains router class and routrs file
- added colors & text styles
- added empty login screen
- added on boarding screen

  <img width="270" height="600" alt="Screenshot_20251023_124333" src="https://github.com/user-attachments/assets/0355c1de-8d08-418a-991f-fd64e120c774" />


## 🎨 Login Screen Design
- Added FontWeightHelper in Theming
- Added Spacing in Helpers
- Added AppTextFormField in Widgets
- Added AppTextButton in Widgets
- Added Some colors & TextStyle

<img width="270" height="600" alt="Screenshot_20251025_141352" src="https://github.com/user-attachments/assets/ecb8680c-83aa-4d40-9ca3-dd5931fea405" />


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

## 🎨 Sign Up Screen
- Using Same code Login Screen.
- Added isPhoneNumberValid in AppRegex.
- Change registerLazySingleton to registerFactory in dependency_injection becase when navigater between screen hapnded errror, this create every call.

<img width="270" height="600" alt="Screenshot_20251101_104402" src="https://github.com/user-attachments/assets/b97b8988-09bf-426d-b08e-13ea8e8e4b8d" />

## 🍃 Flutter Flavors
What are Flavors? 

They are a way in Flutter to create multiple versions (configurations) of the same application—for example:

1️⃣ Development version (for developers—contains logs and testing data)

2️⃣ Staging version (for testing before release) X Iam not using it now

3️⃣ Production version (the final version uploaded to the store)

How to Implement Flavors in Flutter for Android?

Set up Flutter Flavors for your app so you have two versions:

🧩 Development → For testing.

🚀 Production → For the final version.

- Created 2 files in the root folder lib
  
   1- main_development.dart
  
   2- main_production.dart
  
- Created 2 build types in android/app/build.gradle then after flavorDimensions
  
  1- dev
  2- prod

From the Terminal:

To run the development version: flutter run --flavor -t development lib/main_development.dart

To run the production version: flutter run --flavor -t production lib/main_production.dart

How to Implement Flavors in Flutter for IOS? I cant test it becase I dont have mac

## 📱 App Flutter Flavors

<img width="270" height="600" alt="Screenshot_20251101_144715" src="https://github.com/user-attachments/assets/a302fe59-7c6c-4ef0-96bb-2291920eafb4" />

## 🍂 Flutter Firebase & 🛬 Flutter Fastlane
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  /// كونستركتر خاص (private) يعني لا يمكن إنشاء كائن من DioFactory خارج الكلاس
  DioFactory._();
  // متغير Dio وحيد يمكن الوصول إليه من أي مكان دون الحاجة لإنشاء كائن
  static Dio? dio;

  //getDio method to get a singleton Dio instance with configured timeouts and interceptors
  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      // Log request/response info in a pretty, easy to read format
      //تضيف سجلات تفصيلية وجميلة في الـ console لتسهل عليك رؤية الطلبات والاستجابات أثناء التطوير
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}

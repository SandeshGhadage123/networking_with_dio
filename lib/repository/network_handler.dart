import 'package:dio/dio.dart';

class HttpService{
  late Dio _dio;

  final baseUrl = 'coincap.io';

  HttpService(){
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
    ));
    //initializeInterceptors();
  }

  Future<Response> getRequest(String endPoint) async{
    Response response;

    try {
      response = await _dio.get(endPoint);
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }


  // initializeInterceptors(){
  //   _dio.interceptors.add(InterceptorsWrapper(
  //     onError: (error){
  //       print(error.message),
  //     },
  //     onRequest: (request){
  //       print("${request.method} ${request.path}"),
  //     },
  //     onResponse: (responce){
  //       print(responce.data),
  //     }
  //   ));
  // }
}
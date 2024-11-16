import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiProvider<T> extends GetConnect  {
   String apiKey = '123456';
   String apiLiveBaseUrl = "https://job-portal.iprologic.in/api/";
   String token = '';

   @override
   void onInit() async {
      httpClient.baseUrl = apiLiveBaseUrl;
      httpClient.defaultContentType = 'application/json';
      httpClient.timeout = const Duration(seconds: 25);
      httpClient.addRequestModifier<T>((request) async {
        final modifiedRequest = request as Request<T>;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        final String? tokenValue = prefs.getString('token');
        modifiedRequest.headers['Authorization'] = 'Bearer ${tokenValue}';
        token = tokenValue??"";
        modifiedRequest.headers['ApiKey'] = apiKey;
        return modifiedRequest;
    });
    super.onInit();
  }

   Future<Response> getApi(String endpoint) async {
     return await get(endpoint);
   }

   Future<Response> postFormData(String endpoint, Map<String, dynamic> data) async {
     final formData = data.map((key, value) => MapEntry(key, value.toString()));

     return await post(
       endpoint,
       formData,
       contentType: 'application/x-www-form-urlencoded', // Set content type to form data
     );
   }
}
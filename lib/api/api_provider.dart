import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiProvider<T> extends GetConnect  {
   String apiKey = '123456';
   String apiLiveBaseUrl = "https://job-portal.iprologic.in/api/";
   String token = '';
   String jswToken = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNDdkZThhYTYyMTdhM2RjMjU3NTQ2ZGY4MWExYWY2NDNjZWYwOGJmNjE1NmU3M2E1NmJkODZkYTc0N2Y0ZmMyOTZkZDMxOTJmYTU5ZGViYjUiLCJpYXQiOjE3MzExNDcyMDUuNTEwNzQ3LCJuYmYiOjE3MzExNDcyMDUuNTEwNzQ4LCJleHAiOjE3NjI2ODMyMDUuNTA4Njc4LCJzdWIiOiI1Iiwic2NvcGVzIjpbXX0.RR__IB0-InPw0OKprKQxi1PK2Hv8yqUvrpFVZSFGmEM_md8xLy5_tJ-1XWY8U11eGWs5MKaDiHuewKPtUjNFpIhLiaLowOH6wnNW_ldmROO1n3h6wUnlsQXy9a8T1qUNEoe3pxE6M1_asfp54hh6LQhFNS5OlwmtBEE_nDuDd6wWspI4OOCXALWYtCfjRInM2Mm8Ws0EYbAcSxLwDSWGf2lweCyI-BFR10bvSz1IFj6JOM_ulBxvKbL1SpOtCcfF43goG4kkRtfr31MJxMoV6JPqRpNPcVcxScYECjY9zCYqw5EwuGCCIgpUqO6QLqRc-I7GxBQFKgPDx7qJqJam_solRccuUhd0mp4HHBLyg_3Sj8jM_oEM-Xtc-rrvS6UVn2q9SeU6eP4njrK7SvFhp7uFcNt5u7SLGWKbp7vi048PwZV5BOjmTY8u3d3QfmgI82lybQXbYKnkuPMbq9gLzEx5rSPJJ0pPl1Ve4xaF4lvNO8vvR9oZnoWhYyUIyeqWPDAw1tC5fyu_rkC2LiyUy7cjdtlky6pzSVmr25RVYxLL1FcAyZ36ye9I7cJqEoQDcOpyK7sw3U7E0vVuSScxUn8mcg-keQNpk2QEOsAnAu-4d3gU_KbjKgngfxnIRFQuLEafJLKBPpf1-sCZpHsWcAiebOpgSpScsuqJ88C5j84";

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
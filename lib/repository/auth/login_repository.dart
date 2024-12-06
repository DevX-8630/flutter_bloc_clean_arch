import 'package:flutter_bloc_clean_arch/models/user/user_login_response.dart';
import 'package:flutter_bloc_clean_arch/view/config/api_urls.dart';
import 'package:flutter_bloc_clean_arch/view/config/data/network/network_services_api.dart';

class LoginRepository {
  final _api = NetworkServicesApi();
  Future<UserLoginResponse> loginApi(dynamic data) async {
    final response = await _api.postApi(ApiUrl.loginApi, data);
    return UserLoginResponse.fromJson(response);
  }
}

import 'package:dio/dio.dart';
import 'package:flutter_exam/model/user_model.dart';
import 'package:flutter_exam/my_app.dart';

class AuthService {
  Dio dio = Dio();
  late Response response;

  Future<bool> login(UserModel user) async {
    try {
      response = await dio.post(
          'https://food-api-omega.vercel.app/api/v1/chef/signin',
          data: user.toMap());
      storage.setString('token', response.data['token']);
      return true;
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return false;
    }
  }
}

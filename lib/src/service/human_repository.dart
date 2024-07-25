import 'package:dio/dio.dart';
import 'human.dart';

class HumanRepository {
  final dio = Dio();

  Future<Human> signUp(String email, String password, String name) async {
    try {
      final response = await dio.post("http://localhost:8080/signup", data: {
        'email': email,
        'password': password,
        'name': name,
      });

      if (response.statusCode == 200) {
        return Human.fromJson(response.data);
      } else {
        throw Exception('Failed to sign up');
      }
    } catch (e) {
      throw Exception('Failed to sign up: $e');
    }
  }
}

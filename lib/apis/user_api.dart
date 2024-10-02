import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/users.dart';

class UserApi {
  static String server = 'eleven-clouds-fry.loca.lt';

  static Future<List<User>> fetchUsers() async {
    var url = Uri.https(server, '/users');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((user) => User.fromJson(user)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }

  static Future<User> fetchUser(int id) async {
    var url = Uri.https(server, '/users/$id');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load user');
    }
  }
}

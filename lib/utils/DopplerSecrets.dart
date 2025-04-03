import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class DopplerSecrets {
  static Future<String?> getLoginSecret() async {
    final apiKey = dotenv.env['DOPPLER_API_KEY'];
    final url = Uri.parse(
      'https://api.doppler.com/v3/configs/config/secrets/download?format=json',
    );

    final response = await http.get(
      url,
      headers: {'Authorization': 'Bearer $apiKey'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['LOGIN']; // El nombre de tu secret
    } else {
      print('Error al obtener secretos: ${response.body}');
      return null;
    }
  }
}

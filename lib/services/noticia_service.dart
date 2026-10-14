import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:app_noticias/models/noticia.dart';

class NoticiaService {
  static const String baseUrl = "http://10.0.2.2:8000/api";

  Future<List<Noticia>> getNoticias() async {
    final resposta = await http.get(Uri.parse('$baseUrl/noticias'));

    if (resposta.statusCode == 200) {
      final List dados = jsonDecode(resposta.body);
      return dados.map((item) => Noticia.fromjson(item)).toList();
    } else {
      throw Exception('Não foi possivel carregar as notiícias');
    }
  }
}

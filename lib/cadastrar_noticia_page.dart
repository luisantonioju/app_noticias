import 'package:app_noticias/models/noticia.dart';
import 'package:flutter/material.dart';

class CadastrarNoticiaPage extends StatefulWidget {
  final Noticia? noticia;
  const CadastrarNoticiaPage({super.key, this.noticia});

  @override
  State<CadastrarNoticiaPage> createState() => _CadastrarNoticiaPageState();
}

class _CadastrarNoticiaPageState extends State<CadastrarNoticiaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Notícia'),
      ),
      body: ListView(),
    );
  }
}

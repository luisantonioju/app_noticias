import 'package:flutter/material.dart';

class CadastrarNoticiaPage extends StatefulWidget {
  const CadastrarNoticiaPage({super.key});

  @override
  State<CadastrarNoticiaPage> createState() => _CadastrarNoticiaPageState();
}

class _CadastrarNoticiaPageState extends State<CadastrarNoticiaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text('Cadastrar Notícia'),
    ),
    body: ListView(),
    );
  }
}

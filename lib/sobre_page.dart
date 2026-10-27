import 'package:flutter/material.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 150),
              Image.asset(
                'assets/img/logotipo.png',
                width: 250,
              ),
              const SizedBox(height: 24),
              const Text(
                'Portal de Notícias é app desenvolvido, que vai consumir uma API própria desenvolvida a partir em Laravel.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF5B6B79),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static final List<Map<String, String>> noticias = [
    {
      'título': 'Nova tecnologia é lançada no mercado',
      'resumo':
          'Empresa apresenta uma nova solução tecnológica para facilitar o dia a dia das pessoas.',
      'categoria': 'Tecnologia',
      'data': '06/10/2026',
    },
    {
      'título': 'Brasil recebe novo projeto de educação',
      'resumo':
          'Novo projeto busca ampliar o acesso à educação e melhorar a qualidade do ensino.',
      'categoria': 'Educação',
      'data': '05/10/2026',
    },
    {
      'título': 'Cidade inaugura novo parque público',
      'resumo':
          'Novo espaço oferece áreas de lazer, esporte e convivência para a população.',
      'categoria': 'Cidade',
      'data': '04/10/2026',
    },
    {
      'título': 'Equipe brasileira conquista campeonato',
      'resumo':
          'Time brasileiro vence a competição após uma disputa emocionante na final.',
      'categoria': 'Esportes',
      'data': '03/10/2026',
    },
    {
      'título': 'Festival cultural reúne milhares de pessoas',
      'resumo':
          'Evento apresenta música, arte e gastronomia e reúne visitantes de diversas regiões.',
      'categoria': 'Cultura',
      'data': '02/10/2026',
    },
  ];

  static final List<String> categorias = [
    'Todas',
    'Tecnologia',
    'Esportes',
    'Cultura',
    'Cidade',
    'Educação',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/img/logotipo.png',
          height: 20,
        ),
        centerTitle: true,
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.search),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          SizedBox(
            height: 45,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              children: categorias.map((categoria) {
                final selecionada = categoria == "Todas";
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: selecionada
                          ? Colors.black
                          : const Color(0xFFEDEDED),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    categoria,
                    style: const TextStyle(fontSize: 12),
                  ),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: noticias.length,
              itemBuilder: (context, index) {
                final noticia = noticias[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  color: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Color(0xFFCBD2D9),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 120,
                        color: const Color(0xFFE4e9EF),
                        child: const Icon(Icons.image_outlined),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Tecnologia'),
                                SizedBox(width: 15),
                                Text('06/10/2026'),
                              ],
                            ),
                            Text(
                              'Time brasileiro vence a competição após uma disputa emocionante na final.',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

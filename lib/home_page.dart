import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static final List<Map<String, dynamic>> noticias = [
    {
      'titulo': 'Nova tecnologia é lançada no mercado',
      'resumo':
          'Empresa apresenta uma nova solução tecnológica para facilitar o dia a dia das pessoas.',
      'categoria': 'Tecnologia',
      'data': '06/10/2026',
    },
    {
      'titulo': 'Brasil recebe novo projeto de educação',
      'resumo':
          'Novo projeto busca ampliar o acesso à educação e melhorar a qualidade do ensino.',
      'categoria': 'Educação',
      'data': '05/10/2026',
    },
    {
      'titulo': 'Cidade inaugura novo parque público',
      'resumo':
          'Novo espaço oferece áreas de lazer, esporte e convivência para a população.',
      'categoria': 'Cidade',
      'data': '04/10/2026',
    },
    {
      'titulo': 'Equipe brasileira conquista campeonato',
      'resumo':
          'Time brasileiro vence a competição após uma disputa emocionante na final.',
      'categoria': 'Esportes',
      'data': '03/10/2026',
    },
    {
      'titulo': 'Festival cultural reúne milhares de pessoas',
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
                  clipBehavior: Clip.antiAlias,
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
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEFF4FB),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    noticia['categoria'],
                                    style: const TextStyle(fontSize: 11),
                                  ),
                                ),
                                const SizedBox(width: 15),
                                const Text(
                                  '06/10/2026',
                                  style: TextStyle(fontSize: 11),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              noticia['titulo'],
                              style: const TextStyle(
                                fontSize: 15,
                                color: Color(0xFF1b2a4a),
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              noticia['resumo'],
                              style: const TextStyle(
                                fontSize: 15,
                                color: Color(0xFF1b2a4a),
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
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

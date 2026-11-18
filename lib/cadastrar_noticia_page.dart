import 'dart:io';

import 'package:app_noticias/models/noticia.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CadastrarNoticiaPage extends StatefulWidget {
  final Noticia? noticia;
  const CadastrarNoticiaPage({super.key, this.noticia});

  @override
  State<CadastrarNoticiaPage> createState() => _CadastrarNoticiaPageState();
}

class _CadastrarNoticiaPageState extends State<CadastrarNoticiaPage> {
  final ImagePicker _picker = ImagePicker();
  File? _imagemSelecionada;

  Future<void> _selecionarImagem(ImageSource origem) async {
    final XFile? foto = await _picker.pickImage(
      source: origem,
      imageQuality: 80,
    );

    if (foto != null) {
      setState(() {
        _imagemSelecionada = File(foto.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Notícia'),
      ),
      body: ListView(
        children: [
          //outros campos
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFD7D7D7),
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            child: _imagemSelecionada != null
                ? Image.file(
                    _imagemSelecionada!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  )
                : (widget.noticia != null && widget.noticia!.imagem != null)
                ? Image.network(
                    widget.noticia!.imagem!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    errorBuilder: (context, erro, stack) => const Center(
                      child: Icon(
                        Icons.image_outlined,
                        size: 50,
                        color: Colors.grey,
                      ),
                    ),
                  )
                : const Center(
                    child: Icon(
                      Icons.image_outlined,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () => _selecionarImagem(ImageSource.camera),
                  icon: const Icon(Icons.camera_alt),
                  label: const Text('Câmera'),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () => _selecionarImagem(ImageSource.gallery),
                  icon: const Icon(Icons.photo_library),
                  label: const Text('Galeria'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

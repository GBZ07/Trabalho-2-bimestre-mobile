import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const FrasesMotivacionaisApp());
}

class FrasesMotivacionaisApp extends StatelessWidget {
  const FrasesMotivacionaisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frases Motivacionais',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _frases = [
    "Acredite em você mesmo.",
    "Você é capaz de coisas incríveis.",
    "Nunca desista dos seus sonhos.",
    "O sucesso é a soma de pequenos esforços diários.",
    "Seja a mudança que você quer ver no mundo.",
    "A jornada é tão importante quanto o destino.",
    "Comece onde você está, use o que você tem, faça o que puder.",
    "Dias difíceis constroem pessoas fortes.",
    "Não tenha medo de recomeçar.",
    "Tudo que você precisa para começar é dar o primeiro passo."
  ];

  String _fraseAtual = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    setState(() {
      final indice = Random().nextInt(_frases.length);
      _fraseAtual = _frases[indice];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frases Motivacionais'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        width: double.infinity,
        color: Colors.deepPurple.shade50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _fraseAtual,
              style: const TextStyle(fontSize: 22, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: _gerarFrase,
              icon: const Icon(Icons.lightbulb),
              label: const Text("Nova Frase"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:app_flutter/pages/lista_tarefas_page.dart';

void main() {
  runApp(const CadastroApp());
}

class CadastroApp extends StatelessWidget {
  const CadastroApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gerenciador de Tarefas',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ListaTarefasPage(),
    );
  }
}

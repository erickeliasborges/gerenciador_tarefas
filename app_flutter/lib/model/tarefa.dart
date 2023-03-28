

import 'package:intl/intl.dart';

class Tarefa {

  static const CAMPO_ID = 'id';
  static const CAMPO_DESCRICAO = 'descricao';
  static const CAMPO_PRAZO = 'prazo';
  static const NOME_TABLE = 'tarefas';

  int id;
  String descricao;
  DateTime? prazo;

  Tarefa({required this.id, required this.descricao, this.prazo});

  String get prazoFormatado {
    if (prazo == null){
      return "";
    }
    return DateFormat('dd/MM/yyyy').format(prazo!);
  }

  Map<String, dynamic> toMap() => <String, dynamic>{
    CAMPO_ID: id,
    CAMPO_DESCRICAO: descricao,
    CAMPO_PRAZO: prazo == null ? null : DateFormat("dd/MM/yyyy").format(prazo!),
  };

  factory Tarefa.fromMap(Map<String, dynamic> map) => Tarefa(
    id: map[CAMPO_ID] is int ? map[CAMPO_ID] : null,
    descricao: map[CAMPO_DESCRICAO] is String ?  map[CAMPO_DESCRICAO] : '',
    prazo: map[CAMPO_PRAZO] == null ? null : DateFormat("dd/MM/yyyy").parse(map[CAMPO_PRAZO]),
  );
}
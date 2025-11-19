import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutosRecord extends FirestoreRecord {
  ProdutosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "Quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  bool hasQuantidade() => _quantidade != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "Informacoes_adicionais" field.
  String? _informacoesAdicionais;
  String get informacoesAdicionais => _informacoesAdicionais ?? '';
  bool hasInformacoesAdicionais() => _informacoesAdicionais != null;

  // "fotos" field.
  String? _fotos;
  String get fotos => _fotos ?? '';
  bool hasFotos() => _fotos != null;

  // "id_doador" field.
  String? _idDoador;
  String get idDoador => _idDoador ?? '';
  bool hasIdDoador() => _idDoador != null;

  // "data_cadastro" field.
  DateTime? _dataCadastro;
  DateTime? get dataCadastro => _dataCadastro;
  bool hasDataCadastro() => _dataCadastro != null;

  // "telefone_contato" field.
  String? _telefoneContato;
  String get telefoneContato => _telefoneContato ?? '';
  bool hasTelefoneContato() => _telefoneContato != null;

  // "uf" field.
  String? _uf;
  String get uf => _uf ?? '';
  bool hasUf() => _uf != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _quantidade = castToType<int>(snapshotData['Quantidade']);
    _status = snapshotData['status'] as String?;
    _informacoesAdicionais = snapshotData['Informacoes_adicionais'] as String?;
    _fotos = snapshotData['fotos'] as String?;
    _idDoador = snapshotData['id_doador'] as String?;
    _dataCadastro = snapshotData['data_cadastro'] as DateTime?;
    _telefoneContato = snapshotData['telefone_contato'] as String?;
    _uf = snapshotData['uf'] as String?;
    _cidade = snapshotData['cidade'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produtos');

  static Stream<ProdutosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutosRecord.fromSnapshot(s));

  static Future<ProdutosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutosRecord.fromSnapshot(s));

  static ProdutosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProdutosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutosRecordData({
  String? nome,
  String? descricao,
  int? quantidade,
  String? status,
  String? informacoesAdicionais,
  String? fotos,
  String? idDoador,
  DateTime? dataCadastro,
  String? telefoneContato,
  String? uf,
  String? cidade,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'descricao': descricao,
      'Quantidade': quantidade,
      'status': status,
      'Informacoes_adicionais': informacoesAdicionais,
      'fotos': fotos,
      'id_doador': idDoador,
      'data_cadastro': dataCadastro,
      'telefone_contato': telefoneContato,
      'uf': uf,
      'cidade': cidade,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutosRecordDocumentEquality implements Equality<ProdutosRecord> {
  const ProdutosRecordDocumentEquality();

  @override
  bool equals(ProdutosRecord? e1, ProdutosRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.descricao == e2?.descricao &&
        e1?.quantidade == e2?.quantidade &&
        e1?.status == e2?.status &&
        e1?.informacoesAdicionais == e2?.informacoesAdicionais &&
        e1?.fotos == e2?.fotos &&
        e1?.idDoador == e2?.idDoador &&
        e1?.dataCadastro == e2?.dataCadastro &&
        e1?.telefoneContato == e2?.telefoneContato &&
        e1?.uf == e2?.uf &&
        e1?.cidade == e2?.cidade;
  }

  @override
  int hash(ProdutosRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.descricao,
        e?.quantidade,
        e?.status,
        e?.informacoesAdicionais,
        e?.fotos,
        e?.idDoador,
        e?.dataCadastro,
        e?.telefoneContato,
        e?.uf,
        e?.cidade
      ]);

  @override
  bool isValidKey(Object? o) => o is ProdutosRecord;
}

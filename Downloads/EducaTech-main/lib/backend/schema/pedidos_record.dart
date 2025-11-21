import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidosRecord extends FirestoreRecord {
  PedidosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_usuario" field.
  String? _idUsuario;
  String get idUsuario => _idUsuario ?? '';
  bool hasIdUsuario() => _idUsuario != null;

  // "id_doador" field.
  String? _idDoador;
  String get idDoador => _idDoador ?? '';
  bool hasIdDoador() => _idDoador != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "data_pedido" field.
  DateTime? _dataPedido;
  DateTime? get dataPedido => _dataPedido;
  bool hasDataPedido() => _dataPedido != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  bool hasQuantidade() => _quantidade != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "infoad" field.
  String? _infoad;
  String get infoad => _infoad ?? '';
  bool hasInfoad() => _infoad != null;

  // "telefonecontato" field.
  String? _telefonecontato;
  String get telefonecontato => _telefonecontato ?? '';
  bool hasTelefonecontato() => _telefonecontato != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  void _initializeFields() {
    _idUsuario = snapshotData['id_usuario'] as String?;
    _idDoador = snapshotData['id_doador'] as String?;
    _nome = snapshotData['nome'] as String?;
    _dataPedido = snapshotData['data_pedido'] as DateTime?;
    _quantidade = castToType<int>(snapshotData['quantidade']);
    _status = snapshotData['status'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _infoad = snapshotData['infoad'] as String?;
    _telefonecontato = snapshotData['telefonecontato'] as String?;
    _foto = snapshotData['foto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedidos');

  static Stream<PedidosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PedidosRecord.fromSnapshot(s));

  static Future<PedidosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PedidosRecord.fromSnapshot(s));

  static PedidosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PedidosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PedidosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PedidosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PedidosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PedidosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPedidosRecordData({
  String? idUsuario,
  String? idDoador,
  String? nome,
  DateTime? dataPedido,
  int? quantidade,
  String? status,
  String? descricao,
  String? infoad,
  String? telefonecontato,
  String? foto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_usuario': idUsuario,
      'id_doador': idDoador,
      'nome': nome,
      'data_pedido': dataPedido,
      'quantidade': quantidade,
      'status': status,
      'descricao': descricao,
      'infoad': infoad,
      'telefonecontato': telefonecontato,
      'foto': foto,
    }.withoutNulls,
  );

  return firestoreData;
}

class PedidosRecordDocumentEquality implements Equality<PedidosRecord> {
  const PedidosRecordDocumentEquality();

  @override
  bool equals(PedidosRecord? e1, PedidosRecord? e2) {
    return e1?.idUsuario == e2?.idUsuario &&
        e1?.idDoador == e2?.idDoador &&
        e1?.nome == e2?.nome &&
        e1?.dataPedido == e2?.dataPedido &&
        e1?.quantidade == e2?.quantidade &&
        e1?.status == e2?.status &&
        e1?.descricao == e2?.descricao &&
        e1?.infoad == e2?.infoad &&
        e1?.telefonecontato == e2?.telefonecontato &&
        e1?.foto == e2?.foto;
  }

  @override
  int hash(PedidosRecord? e) => const ListEquality().hash([
        e?.idUsuario,
        e?.idDoador,
        e?.nome,
        e?.dataPedido,
        e?.quantidade,
        e?.status,
        e?.descricao,
        e?.infoad,
        e?.telefonecontato,
        e?.foto
      ]);

  @override
  bool isValidKey(Object? o) => o is PedidosRecord;
}

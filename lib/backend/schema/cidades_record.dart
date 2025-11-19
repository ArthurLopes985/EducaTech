import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CidadesRecord extends FirestoreRecord {
  CidadesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_cidade" field.
  String? _idCidade;
  String get idCidade => _idCidade ?? '';
  bool hasIdCidade() => _idCidade != null;

  // "id_estado" field.
  String? _idEstado;
  String get idEstado => _idEstado ?? '';
  bool hasIdEstado() => _idEstado != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  void _initializeFields() {
    _idCidade = snapshotData['id_cidade'] as String?;
    _idEstado = snapshotData['id_estado'] as String?;
    _nome = snapshotData['nome'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cidades');

  static Stream<CidadesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CidadesRecord.fromSnapshot(s));

  static Future<CidadesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CidadesRecord.fromSnapshot(s));

  static CidadesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CidadesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CidadesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CidadesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CidadesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CidadesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCidadesRecordData({
  String? idCidade,
  String? idEstado,
  String? nome,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_cidade': idCidade,
      'id_estado': idEstado,
      'nome': nome,
    }.withoutNulls,
  );

  return firestoreData;
}

class CidadesRecordDocumentEquality implements Equality<CidadesRecord> {
  const CidadesRecordDocumentEquality();

  @override
  bool equals(CidadesRecord? e1, CidadesRecord? e2) {
    return e1?.idCidade == e2?.idCidade &&
        e1?.idEstado == e2?.idEstado &&
        e1?.nome == e2?.nome;
  }

  @override
  int hash(CidadesRecord? e) =>
      const ListEquality().hash([e?.idCidade, e?.idEstado, e?.nome]);

  @override
  bool isValidKey(Object? o) => o is CidadesRecord;
}

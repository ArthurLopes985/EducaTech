import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EstadosRecord extends FirestoreRecord {
  EstadosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_estado" field.
  String? _idEstado;
  String get idEstado => _idEstado ?? '';
  bool hasIdEstado() => _idEstado != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "sigla" field.
  String? _sigla;
  String get sigla => _sigla ?? '';
  bool hasSigla() => _sigla != null;

  void _initializeFields() {
    _idEstado = snapshotData['id_estado'] as String?;
    _nome = snapshotData['nome'] as String?;
    _sigla = snapshotData['sigla'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('estados');

  static Stream<EstadosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EstadosRecord.fromSnapshot(s));

  static Future<EstadosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EstadosRecord.fromSnapshot(s));

  static EstadosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EstadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EstadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EstadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EstadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EstadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEstadosRecordData({
  String? idEstado,
  String? nome,
  String? sigla,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_estado': idEstado,
      'nome': nome,
      'sigla': sigla,
    }.withoutNulls,
  );

  return firestoreData;
}

class EstadosRecordDocumentEquality implements Equality<EstadosRecord> {
  const EstadosRecordDocumentEquality();

  @override
  bool equals(EstadosRecord? e1, EstadosRecord? e2) {
    return e1?.idEstado == e2?.idEstado &&
        e1?.nome == e2?.nome &&
        e1?.sigla == e2?.sigla;
  }

  @override
  int hash(EstadosRecord? e) =>
      const ListEquality().hash([e?.idEstado, e?.nome, e?.sigla]);

  @override
  bool isValidKey(Object? o) => o is EstadosRecord;
}

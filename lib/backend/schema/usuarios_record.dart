import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosRecord extends FirestoreRecord {
  UsuariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "foto_perfil" field.
  String? _fotoPerfil;
  String get fotoPerfil => _fotoPerfil ?? '';
  bool hasFotoPerfil() => _fotoPerfil != null;

  // "id_usuario" field.
  String? _idUsuario;
  String get idUsuario => _idUsuario ?? '';
  bool hasIdUsuario() => _idUsuario != null;

  // "uf" field.
  String? _uf;
  String get uf => _uf ?? '';
  bool hasUf() => _uf != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _cpf = snapshotData['cpf'] as String?;
    _email = snapshotData['email'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _telefone = snapshotData['telefone'] as String?;
    _fotoPerfil = snapshotData['foto_perfil'] as String?;
    _idUsuario = snapshotData['id_usuario'] as String?;
    _uf = snapshotData['uf'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuariosRecord.fromSnapshot(s));

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuariosRecord.fromSnapshot(s));

  static UsuariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuariosRecordData({
  String? nome,
  String? cpf,
  String? email,
  String? endereco,
  String? telefone,
  String? fotoPerfil,
  String? idUsuario,
  String? uf,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'cpf': cpf,
      'email': email,
      'endereco': endereco,
      'telefone': telefone,
      'foto_perfil': fotoPerfil,
      'id_usuario': idUsuario,
      'uf': uf,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuariosRecordDocumentEquality implements Equality<UsuariosRecord> {
  const UsuariosRecordDocumentEquality();

  @override
  bool equals(UsuariosRecord? e1, UsuariosRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.cpf == e2?.cpf &&
        e1?.email == e2?.email &&
        e1?.endereco == e2?.endereco &&
        e1?.telefone == e2?.telefone &&
        e1?.fotoPerfil == e2?.fotoPerfil &&
        e1?.idUsuario == e2?.idUsuario &&
        e1?.uf == e2?.uf;
  }

  @override
  int hash(UsuariosRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.cpf,
        e?.email,
        e?.endereco,
        e?.telefone,
        e?.fotoPerfil,
        e?.idUsuario,
        e?.uf
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuariosRecord;
}

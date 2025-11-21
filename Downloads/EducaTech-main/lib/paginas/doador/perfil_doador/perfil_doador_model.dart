import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'perfil_doador_widget.dart' show PerfilDoadorWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PerfilDoadorModel extends FlutterFlowModel<PerfilDoadorWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_fotoPerfilDoador = false;
  FFUploadedFile uploadedLocalFile_fotoPerfilDoador =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (UploadImagensPerfil)] action in Foto widget.
  ApiCallResponse? fotoPerfilDoador;
  // State field(s) for NomeCompletoField widget.
  FocusNode? nomeCompletoFieldFocusNode;
  TextEditingController? nomeCompletoFieldTextController;
  String? Function(BuildContext, String?)?
      nomeCompletoFieldTextControllerValidator;
  String? _nomeCompletoFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É obrigatório colocar o seu nome';
    }

    return null;
  }

  // State field(s) for TelefoneField widget.
  FocusNode? telefoneFieldFocusNode;
  TextEditingController? telefoneFieldTextController;
  String? Function(BuildContext, String?)? telefoneFieldTextControllerValidator;
  String? _telefoneFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É obrigatório colocar o número de telefone';
    }

    if (val.length < 11) {
      return 'É preciso ter no minimo 11 caracteres no campo de telefone';
    }
    if (val.length > 11) {
      return 'É permitido no maximo 11 caracteres no campo de telefone';
    }

    return null;
  }

  // State field(s) for CPFfield widget.
  FocusNode? cPFfieldFocusNode;
  TextEditingController? cPFfieldTextController;
  String? Function(BuildContext, String?)? cPFfieldTextControllerValidator;
  String? _cPFfieldTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É obrigatório colocar o CPF';
    }

    if (val.length < 11) {
      return 'É preciso ter no minimo 11 caracteres no campo CPF';
    }
    if (val.length > 11) {
      return 'É permitido no maximo 11 caracteres no campo CPF';
    }

    return null;
  }

  // State field(s) for DropDownest widget.
  String? dropDownestValue;
  FormFieldController<String>? dropDownestValueController;
  // State field(s) for EnderecoField widget.
  FocusNode? enderecoFieldFocusNode;
  TextEditingController? enderecoFieldTextController;
  String? Function(BuildContext, String?)? enderecoFieldTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    nomeCompletoFieldTextControllerValidator =
        _nomeCompletoFieldTextControllerValidator;
    telefoneFieldTextControllerValidator =
        _telefoneFieldTextControllerValidator;
    cPFfieldTextControllerValidator = _cPFfieldTextControllerValidator;
  }

  @override
  void dispose() {
    nomeCompletoFieldFocusNode?.dispose();
    nomeCompletoFieldTextController?.dispose();

    telefoneFieldFocusNode?.dispose();
    telefoneFieldTextController?.dispose();

    cPFfieldFocusNode?.dispose();
    cPFfieldTextController?.dispose();

    enderecoFieldFocusNode?.dispose();
    enderecoFieldTextController?.dispose();
  }
}

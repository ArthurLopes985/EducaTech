import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'editar_produto_widget.dart' show EditarProdutoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarProdutoModel extends FlutterFlowModel<EditarProdutoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_fotoProdutoNovo1 = false;
  FFUploadedFile uploadedLocalFile_fotoProdutoNovo1 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (UploadImagensProduto)] action in Image widget.
  ApiCallResponse? novoProduto;
  // State field(s) for produto widget.
  FocusNode? produtoFocusNode;
  TextEditingController? produtoTextController;
  String? Function(BuildContext, String?)? produtoTextControllerValidator;
  String? _produtoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É obrigatório colocar o nome do produto';
    }

    return null;
  }

  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  String? _descricaoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É obrigatório colocar uma descrição do produto';
    }

    return null;
  }

  // State field(s) for status widget.
  FocusNode? statusFocusNode;
  TextEditingController? statusTextController;
  String? Function(BuildContext, String?)? statusTextControllerValidator;
  String? _statusTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É obrigatório colocar o status do produto';
    }

    return null;
  }

  // State field(s) for qtd widget.
  FocusNode? qtdFocusNode;
  TextEditingController? qtdTextController;
  String? Function(BuildContext, String?)? qtdTextControllerValidator;
  String? _qtdTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É obrigatório colocar a quantidade do produto';
    }

    if (val.length < 1) {
      return 'É preciso ter no minimo 1 produto no campo quantidade do produto';
    }

    return null;
  }

  // State field(s) for addinfo widget.
  FocusNode? addinfoFocusNode;
  TextEditingController? addinfoTextController;
  String? Function(BuildContext, String?)? addinfoTextControllerValidator;
  // State field(s) for addtel widget.
  FocusNode? addtelFocusNode;
  TextEditingController? addtelTextController;
  String? Function(BuildContext, String?)? addtelTextControllerValidator;
  String? _addtelTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É obrigatório adicionar um telefone para contato';
    }

    if (val.length < 11) {
      return 'É preciso ter no minimo 11 caracteres no campo telefone para contato';
    }
    if (val.length > 11) {
      return 'É permitido no maximo 11 caracteres no campo telefone para contato';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    produtoTextControllerValidator = _produtoTextControllerValidator;
    descricaoTextControllerValidator = _descricaoTextControllerValidator;
    statusTextControllerValidator = _statusTextControllerValidator;
    qtdTextControllerValidator = _qtdTextControllerValidator;
    addtelTextControllerValidator = _addtelTextControllerValidator;
  }

  @override
  void dispose() {
    produtoFocusNode?.dispose();
    produtoTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();

    statusFocusNode?.dispose();
    statusTextController?.dispose();

    qtdFocusNode?.dispose();
    qtdTextController?.dispose();

    addinfoFocusNode?.dispose();
    addinfoTextController?.dispose();

    addtelFocusNode?.dispose();
    addtelTextController?.dispose();
  }
}

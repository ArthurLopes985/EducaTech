import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'reservar_produto_widget.dart' show ReservarProdutoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReservarProdutoModel extends FlutterFlowModel<ReservarProdutoWidget> {
  ///  Local state fields for this page.

  int? quantidade = 1;

  int? qtdfutura = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for produto widget.
  FocusNode? produtoFocusNode;
  TextEditingController? produtoTextController;
  String? Function(BuildContext, String?)? produtoTextControllerValidator;
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  // State field(s) for status widget.
  FocusNode? statusFocusNode1;
  TextEditingController? statusTextController1;
  String? Function(BuildContext, String?)? statusTextController1Validator;
  // State field(s) for status widget.
  FocusNode? statusFocusNode2;
  TextEditingController? statusTextController2;
  String? Function(BuildContext, String?)? statusTextController2Validator;
  // State field(s) for addinfo widget.
  FocusNode? addinfoFocusNode;
  TextEditingController? addinfoTextController;
  String? Function(BuildContext, String?)? addinfoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    produtoFocusNode?.dispose();
    produtoTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();

    statusFocusNode1?.dispose();
    statusTextController1?.dispose();

    statusFocusNode2?.dispose();
    statusTextController2?.dispose();

    addinfoFocusNode?.dispose();
    addinfoTextController?.dispose();
  }
}

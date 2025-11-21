import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailField widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldTextController;
  String? Function(BuildContext, String?)? emailFieldTextControllerValidator;
  // State field(s) for SenhaField widget.
  FocusNode? senhaFieldFocusNode;
  TextEditingController? senhaFieldTextController;
  late bool senhaFieldVisibility;
  String? Function(BuildContext, String?)? senhaFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaFieldVisibility = false;
  }

  @override
  void dispose() {
    emailFieldFocusNode?.dispose();
    emailFieldTextController?.dispose();

    senhaFieldFocusNode?.dispose();
    senhaFieldTextController?.dispose();
  }
}

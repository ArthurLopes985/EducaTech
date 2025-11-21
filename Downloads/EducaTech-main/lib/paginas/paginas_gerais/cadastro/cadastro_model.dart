import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'cadastro_widget.dart' show CadastroWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadastroModel extends FlutterFlowModel<CadastroWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NomeCompletoField widget.
  FocusNode? nomeCompletoFieldFocusNode;
  TextEditingController? nomeCompletoFieldTextController;
  String? Function(BuildContext, String?)?
      nomeCompletoFieldTextControllerValidator;
  String? _nomeCompletoFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É obrigatório colocar o nome completo';
    }

    return null;
  }

  // State field(s) for EmailField widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldTextController;
  String? Function(BuildContext, String?)? emailFieldTextControllerValidator;
  String? _emailFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É obrigatório colocar o seu e-mail';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Digite um e-mail válido';
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
      return 'É preciso de no minimo 11 caracteres no campo telefone';
    }
    if (val.length > 11) {
      return 'É permitido no maximo 11 caracteres no campo telefone';
    }

    return null;
  }

  // State field(s) for CPFfield widget.
  FocusNode? cPFfieldFocusNode;
  TextEditingController? cPFfieldTextController;
  String? Function(BuildContext, String?)? cPFfieldTextControllerValidator;
  String? _cPFfieldTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É obrigatório colocar o seu CPF';
    }

    if (val.length < 11) {
      return 'É preciso de no minimo 11 caracteres no campo CPF';
    }
    if (val.length > 11) {
      return 'É permitido no maximo 11 caracteres no campo CPF';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for SenhaField widget.
  FocusNode? senhaFieldFocusNode;
  TextEditingController? senhaFieldTextController;
  late bool senhaFieldVisibility;
  String? Function(BuildContext, String?)? senhaFieldTextControllerValidator;
  String? _senhaFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É obrigatório colocar a sua senha';
    }

    if (val.length < 8) {
      return 'É preciso de no minimo 8 caracteres no campo senha';
    }
    if (val.length > 16) {
      return 'É permitido no maximo 16 caracteres no campo senha';
    }

    return null;
  }

  // State field(s) for Senha2Field widget.
  FocusNode? senha2FieldFocusNode;
  TextEditingController? senha2FieldTextController;
  late bool senha2FieldVisibility;
  String? Function(BuildContext, String?)? senha2FieldTextControllerValidator;
  String? _senha2FieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É obrigatório repetir a sua senha';
    }

    if (val.length < 8) {
      return 'É preciso de no minimo 8 caracteres no campo repetir senha';
    }
    if (val.length > 16) {
      return 'É permitido no maximo 16 caracteres no campo repetir senha';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nomeCompletoFieldTextControllerValidator =
        _nomeCompletoFieldTextControllerValidator;
    emailFieldTextControllerValidator = _emailFieldTextControllerValidator;
    telefoneFieldTextControllerValidator =
        _telefoneFieldTextControllerValidator;
    cPFfieldTextControllerValidator = _cPFfieldTextControllerValidator;
    senhaFieldVisibility = false;
    senhaFieldTextControllerValidator = _senhaFieldTextControllerValidator;
    senha2FieldVisibility = false;
    senha2FieldTextControllerValidator = _senha2FieldTextControllerValidator;
  }

  @override
  void dispose() {
    nomeCompletoFieldFocusNode?.dispose();
    nomeCompletoFieldTextController?.dispose();

    emailFieldFocusNode?.dispose();
    emailFieldTextController?.dispose();

    telefoneFieldFocusNode?.dispose();
    telefoneFieldTextController?.dispose();

    cPFfieldFocusNode?.dispose();
    cPFfieldTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController4?.dispose();

    senhaFieldFocusNode?.dispose();
    senhaFieldTextController?.dispose();

    senha2FieldFocusNode?.dispose();
    senha2FieldTextController?.dispose();
  }
}

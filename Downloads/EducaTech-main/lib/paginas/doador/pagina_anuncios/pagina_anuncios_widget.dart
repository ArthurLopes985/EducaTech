import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'pagina_anuncios_model.dart';
export 'pagina_anuncios_model.dart';

class PaginaAnunciosWidget extends StatefulWidget {
  const PaginaAnunciosWidget({super.key});

  static String routeName = 'PaginaAnuncios';
  static String routePath = '/paginaAnuncios';

  @override
  State<PaginaAnunciosWidget> createState() => _PaginaAnunciosWidgetState();
}

class _PaginaAnunciosWidgetState extends State<PaginaAnunciosWidget> {
  late PaginaAnunciosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaginaAnunciosModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            StreamBuilder<List<UsuariosRecord>>(
              stream: queryUsuariosRecord(
                queryBuilder: (usuariosRecord) => usuariosRecord.where(
                  'id_usuario',
                  isEqualTo: currentUserUid,
                ),
                singleRecord: true,
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    ),
                  );
                }
                List<UsuariosRecord> cabecalhoUsuariosRecordList =
                    snapshot.data!;
                // Return an empty Container when the item does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final cabecalhoUsuariosRecord =
                    cabecalhoUsuariosRecordList.isNotEmpty
                        ? cabecalhoUsuariosRecordList.first
                        : null;

                return Container(
                  width: 391.9,
                  height: 91.2,
                  decoration: BoxDecoration(
                    color: Color(0xFF9FBD8B),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(330.0, 10.0, 0.0, 40.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24.0),
                      child: Image.network(
                        '${cabecalhoUsuariosRecord?.fotoPerfil}',
                        width: 50.0,
                        height: 50.0,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) =>
                            Image.asset(
                          'assets/images/error_image.png',
                          width: 50.0,
                          height: 50.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            Container(
              width: 401.97,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 3.0, 0.0, 0.0),
                            child: Container(
                              width: 270.0,
                              child: TextFormField(
                                controller: _model.textController,
                                focusNode: _model.textFieldFocusNode,
                                autofocus: false,
                                enabled: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle: FontStyle.italic,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FontStyle.italic,
                                      ),
                                  hintText: 'Pesquisa',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF4F744F),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF71A56B),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                enableInteractiveSelection: true,
                                validator: _model.textControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 3.0,
                          buttonSize: 40.0,
                          fillColor: Color(0xFF618D62),
                          icon: Icon(
                            Icons.search_sharp,
                            color: FlutterFlowTheme.of(context).info,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            await queryProdutosRecordOnce()
                                .then(
                                  (records) => _model.simpleSearchResults =
                                      TextSearch(
                                    records
                                        .map(
                                          (record) => TextSearchItem.fromTerms(
                                              record, [record.nome!]),
                                        )
                                        .toList(),
                                  )
                                          .search(_model.textController.text)
                                          .map((r) => r.object)
                                          .toList(),
                                )
                                .onError(
                                    (_, __) => _model.simpleSearchResults = [])
                                .whenComplete(() => safeSetState(() {}));
                          },
                        ),
                      ]
                          .divide(SizedBox(width: 5.0))
                          .addToStart(SizedBox(width: 40.0)),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 0.0),
                    child: Text(
                      'Para receber doações, por favor, retorne e escolha a opção\"Quero receber doações\"',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FontStyle.italic,
                            ),
                            color: Color(0xFFBF6D30),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 397.09,
              height: 610.6,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: StreamBuilder<List<ProdutosRecord>>(
                stream: queryProdutosRecord(
                  queryBuilder: (produtosRecord) => produtosRecord.where(
                    'nome',
                    isGreaterThanOrEqualTo: _model.textController.text != ''
                        ? _model.textController.text
                        : null,
                  ),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<ProdutosRecord> gridViewProdutosRecordList =
                      snapshot.data!;

                  return GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: 1.0,
                    ),
                    scrollDirection: Axis.vertical,
                    itemCount: gridViewProdutosRecordList.length,
                    itemBuilder: (context, gridViewIndex) {
                      final gridViewProdutosRecord =
                          gridViewProdutosRecordList[gridViewIndex];
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Text(
                              gridViewProdutosRecord.nome,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 2.0, 10.0, 0.0),
                            child: Container(
                              width: 202.9,
                              height: 157.67,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: Color(0xFF9DB882),
                                  width: 3.0,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  '${gridViewProdutosRecord.fotos}',
                                  width: 200.0,
                                  height: 182.41,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
            Container(
              width: 392.0,
              height: 48.0,
              decoration: BoxDecoration(
                color: Color(0xFFBCCE9B),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: Color(0xFFA0AE7D),
                    icon: Icon(
                      Icons.history_sharp,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(HistoricoDoadorWidget.routeName);
                    },
                  ),
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: Color(0xFFA0AE7D),
                    icon: Icon(
                      Icons.add,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(CadastrarProdutoWidget.routeName);
                    },
                  ),
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: Color(0xFFA0AE7D),
                    icon: Icon(
                      Icons.arrow_back,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(DoadorRecebimentoWidget.routeName);
                    },
                  ),
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: Color(0xFFA0AE7D),
                    icon: Icon(
                      Icons.person_2,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(PerfilDoadorWidget.routeName);
                    },
                  ),
                ]
                    .addToStart(SizedBox(width: 1.0))
                    .addToEnd(SizedBox(width: 1.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

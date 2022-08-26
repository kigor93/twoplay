import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateMatchLocationWidget extends StatefulWidget {
  const CreateMatchLocationWidget({
    Key key,
    this.book,
  }) : super(key: key);

  final DocumentReference book;

  @override
  _CreateMatchLocationWidgetState createState() =>
      _CreateMatchLocationWidgetState();
}

class _CreateMatchLocationWidgetState extends State<CreateMatchLocationWidget>
    with TickerProviderStateMixin {
  DateTime datePicked;
  String dropDownInsidValue;
  String dropDownQuanValue;
  String dropDownLevelValue;
  String dropDownSportnameValue;
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(-0.0, -0.0),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CreateMatchLocation'});
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF4B39EF),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: Image.asset(
              'assets/images/__(350_800)-7.png',
            ).image,
          ),
        ),
        child: StreamBuilder<List<OpenMatchRecord>>(
          stream: queryOpenMatchRecord(
            singleRecord: true,
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(
                    color: FlutterFlowTheme.of(context).primaryColor,
                  ),
                ),
              );
            }
            List<OpenMatchRecord> columnOpenMatchRecordList = snapshot.data;
            // Return an empty Container when the document does not exist.
            if (snapshot.data.isEmpty) {
              return Container();
            }
            final columnOpenMatchRecord = columnOpenMatchRecordList.isNotEmpty
                ? columnOpenMatchRecordList.first
                : null;
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent(
                                'CREATE_MATCH_LOCATION_Icon_nxql4mct_ON_T');
                            logFirebaseEvent('Icon_Backend-Call');
                            await columnOpenMatchRecord.reference.delete();
                            logFirebaseEvent('Icon_Update-Local-State');
                            setState(() => FFAppState().locatiomadress = '');
                            logFirebaseEvent('Icon_Update-Local-State');
                            setState(() => FFAppState().locationLAT = null);
                            logFirebaseEvent('Icon_Navigate-Back');
                            context.pop();
                          },
                          child: Icon(
                            Icons.chevron_left_sharp,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            size: 24,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Image.asset(
                          'assets/images/____(500_x_500_px)-4.png',
                          width: 200,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Создать тренировку',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Text(
                            'Выберите спорт и уровень сложности',
                            style:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        StreamBuilder<List<SportTypeRecord>>(
                          stream: querySportTypeRecord(
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            List<SportTypeRecord>
                                dropDownSportnameSportTypeRecordList =
                                snapshot.data;
                            // Return an empty Container when the document does not exist.
                            if (snapshot.data.isEmpty) {
                              return Container();
                            }
                            final dropDownSportnameSportTypeRecord =
                                dropDownSportnameSportTypeRecordList.isNotEmpty
                                    ? dropDownSportnameSportTypeRecordList.first
                                    : null;
                            return FlutterFlowDropDown(
                              options: dropDownSportnameSportTypeRecord
                                  .sportname
                                  .toList()
                                  .toList(),
                              onChanged: (val) =>
                                  setState(() => dropDownSportnameValue = val),
                              width: 170,
                              height: 40,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                  ),
                              hintText: 'Спорт',
                              fillColor: Colors.white,
                              elevation: 2,
                              borderColor: Colors.transparent,
                              borderWidth: 0,
                              borderRadius: 10,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                              hidesUnderline: true,
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                          child: StreamBuilder<List<LevelRecord>>(
                            stream: queryLevelRecord(
                              singleRecord: true,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<LevelRecord> dropDownLevelLevelRecordList =
                                  snapshot.data;
                              // Return an empty Container when the document does not exist.
                              if (snapshot.data.isEmpty) {
                                return Container();
                              }
                              final dropDownLevelLevelRecord =
                                  dropDownLevelLevelRecordList.isNotEmpty
                                      ? dropDownLevelLevelRecordList.first
                                      : null;
                              return FlutterFlowDropDown(
                                options: dropDownLevelLevelRecord.levelList
                                    .toList()
                                    .toList(),
                                onChanged: (val) =>
                                    setState(() => dropDownLevelValue = val),
                                width: 170,
                                height: 40,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                                hintText: 'Уровень',
                                fillColor: Colors.white,
                                elevation: 2,
                                borderColor: Colors.transparent,
                                borderWidth: 0,
                                borderRadius: 10,
                                margin:
                                    EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                                hidesUnderline: true,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 25, 15, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Введите описание ',
                          style: FlutterFlowTheme.of(context)
                              .subtitle1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                fontSize: 16,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: textController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Напишите подробнее о тренировке',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF868686),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF868686),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Кол-во партнеров, помещение, дата и время',
                          style: FlutterFlowTheme.of(context)
                              .subtitle1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                fontSize: 16,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        StreamBuilder<List<QuantityRecord>>(
                          stream: queryQuantityRecord(
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            List<QuantityRecord>
                                dropDownQuanQuantityRecordList = snapshot.data;
                            // Return an empty Container when the document does not exist.
                            if (snapshot.data.isEmpty) {
                              return Container();
                            }
                            final dropDownQuanQuantityRecord =
                                dropDownQuanQuantityRecordList.isNotEmpty
                                    ? dropDownQuanQuantityRecordList.first
                                    : null;
                            return FlutterFlowDropDown(
                              options: dropDownQuanQuantityRecord.quantity
                                  .toList()
                                  .toList(),
                              onChanged: (val) =>
                                  setState(() => dropDownQuanValue = val),
                              width: 170,
                              height: 40,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                  ),
                              hintText: 'Партнеры',
                              fillColor: Colors.white,
                              elevation: 2,
                              borderColor: Colors.transparent,
                              borderWidth: 0,
                              borderRadius: 10,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                              hidesUnderline: true,
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                          child: StreamBuilder<List<InsideRecord>>(
                            stream: queryInsideRecord(
                              singleRecord: true,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<InsideRecord> dropDownInsidInsideRecordList =
                                  snapshot.data;
                              // Return an empty Container when the document does not exist.
                              if (snapshot.data.isEmpty) {
                                return Container();
                              }
                              final dropDownInsidInsideRecord =
                                  dropDownInsidInsideRecordList.isNotEmpty
                                      ? dropDownInsidInsideRecordList.first
                                      : null;
                              return FlutterFlowDropDown(
                                options: dropDownInsidInsideRecord.insider
                                    .toList()
                                    .toList(),
                                onChanged: (val) =>
                                    setState(() => dropDownInsidValue = val),
                                width: 170,
                                height: 40,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                                hintText: 'Условия',
                                fillColor: Colors.white,
                                elevation: 2,
                                borderColor: Colors.transparent,
                                borderWidth: 0,
                                borderRadius: 10,
                                margin:
                                    EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                                hidesUnderline: true,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 200,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Color(0xFF838383),
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'CREATE_MATCH_LOCATION_Row_d01f5tpa_ON_TA');
                                    logFirebaseEvent('Row_Date-Time-Picker');
                                    await DatePicker.showDateTimePicker(
                                      context,
                                      showTitleActions: true,
                                      onConfirm: (date) {
                                        setState(() => datePicked = date);
                                      },
                                      currentTime: getCurrentTimestamp,
                                      minTime: getCurrentTimestamp,
                                      locale: LocaleType.values.firstWhere(
                                        (l) =>
                                            l.name ==
                                            FFLocalizations.of(context)
                                                .languageCode,
                                        orElse: () => LocaleType.en,
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            dateTimeFormat(
                                                'd/M H:mm', datePicked),
                                            'дд.мм.гггг.',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 5, 0),
                                        child: Icon(
                                          Icons.date_range_sharp,
                                          color: Color(0xFF4B39EF),
                                          size: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: StreamBuilder<UsersRecord>(
                              stream:
                                  UsersRecord.getDocument(currentUserReference),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                final buttonUsersRecord = snapshot.data;
                                return FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'CREATE_MATCH_LOCATION_СОЗДАТЬ_BTN_ON_TAP');
                                    logFirebaseEvent('Button_Backend-Call');

                                    final openMatchUpdateData =
                                        createOpenMatchRecordData(
                                      description: textController.text,
                                      inside: dropDownInsidValue,
                                      quantity: dropDownQuanValue,
                                      sportType: dropDownSportnameValue,
                                      level: dropDownLevelValue,
                                      userCreator: currentUserReference,
                                      createdtime: getCurrentTimestamp,
                                      dateAndTimeOfMatch: datePicked,
                                      username: buttonUsersRecord.displayName,
                                      userpic: buttonUsersRecord.photoUrl,
                                      street: '',
                                      locationAdress: FFAppState().locationLAT,
                                    );
                                    await columnOpenMatchRecord.reference
                                        .update(openMatchUpdateData);
                                    logFirebaseEvent('Button_Navigate-To');
                                    context.goNamed('SuccesMatchCreated');
                                    logFirebaseEvent('Button_Backend-Call');

                                    final bookingUpdateData =
                                        createBookingRecordData(
                                      user: currentUserReference,
                                      dateTime: datePicked,
                                    );
                                    await widget.book.update(bookingUpdateData);
                                  },
                                  text: 'Создать',
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 40,
                                    color: Colors.black,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ).animated([animationsMap['columnOnPageLoadAnimation']]);
          },
        ),
      ),
    );
  }
}

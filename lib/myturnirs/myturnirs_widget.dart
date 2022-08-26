import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyturnirsWidget extends StatefulWidget {
  const MyturnirsWidget({Key key}) : super(key: key);

  @override
  _MyturnirsWidgetState createState() => _MyturnirsWidgetState();
}

class _MyturnirsWidgetState extends State<MyturnirsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Myturnirs'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Мои турниры',
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 16,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
          child: StreamBuilder<List<TournamentRecord>>(
            stream: queryTournamentRecord(
              queryBuilder: (tournamentRecord) => tournamentRecord
                  .where('UserApoint', arrayContains: currentUserReference),
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
              List<TournamentRecord> listViewTournamentRecordList =
                  snapshot.data;
              return ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: listViewTournamentRecordList.length,
                itemBuilder: (context, listViewIndex) {
                  final listViewTournamentRecord =
                      listViewTournamentRecordList[listViewIndex];
                  return Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 0),
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'MYTURNIRS_PAGE_Container_d5nfwahw_ON_TAP');
                        logFirebaseEvent('Container_Navigate-To');
                        context.pushNamed(
                          'Turnir',
                          queryParams: {
                            'turnir': serializeParam(
                                listViewTournamentRecord, ParamType.Document),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            'turnir': listViewTournamentRecord,
                          },
                        );
                      },
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          width: 300,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Color(0xFFDADADA),
                            ),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                child: Image.asset(
                                  'assets/images/__(350__800_).png',
                                  width: MediaQuery.of(context).size.width,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.95, 0.35),
                                child: Text(
                                  dateTimeFormat(
                                      'd/M/y', listViewTournamentRecord.date),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.95, 0.65),
                                child: Text(
                                  listViewTournamentRecord.descr
                                      .maybeHandleOverflow(maxChars: 20),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0.95),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 0, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        listViewTournamentRecord.userApoint
                                            .toList()
                                            .length
                                            .toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                      Text(
                                        ' Участников',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Stack(
                                children: [
                                  if (listViewTournamentRecord.userApoint
                                      .toList()
                                      .contains(currentUserReference))
                                    Align(
                                      alignment: AlignmentDirectional(1, 0.7),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        borderWidth: 1,
                                        buttonSize: 60,
                                        icon: Icon(
                                          Icons.play_circle_fill,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 30,
                                        ),
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'MYTURNIRS_PAGE_play_ON_TAP');
                                          logFirebaseEvent('play_Backend-Call');

                                          final tournamentUpdateData = {
                                            'UserApoint': FieldValue.arrayUnion(
                                                [currentUserReference]),
                                          };
                                          await listViewTournamentRecord
                                              .reference
                                              .update(tournamentUpdateData);
                                          logFirebaseEvent('play_Backend-Call');

                                          final usersUpdateData = {
                                            'turnirs': FieldValue.arrayUnion([
                                              listViewTournamentRecord.reference
                                            ]),
                                          };
                                          await currentUserReference
                                              .update(usersUpdateData);
                                        },
                                      ),
                                    ),
                                  if (listViewTournamentRecord.userApoint
                                      .toList()
                                      .contains(currentUserReference))
                                    Align(
                                      alignment: AlignmentDirectional(1, 0.7),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        borderWidth: 1,
                                        buttonSize: 60,
                                        icon: Icon(
                                          Icons.cancel,
                                          color: Color(0xFFF3090C),
                                          size: 30,
                                        ),
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'MYTURNIRS_PAGE_canel_ON_TAP');
                                          logFirebaseEvent(
                                              'canel_Backend-Call');

                                          final tournamentUpdateData = {
                                            'UserApoint':
                                                FieldValue.arrayRemove(
                                                    [currentUserReference]),
                                          };
                                          await listViewTournamentRecord
                                              .reference
                                              .update(tournamentUpdateData);
                                          logFirebaseEvent(
                                              'canel_Backend-Call');

                                          final usersUpdateData = {
                                            'turnirs': FieldValue.arrayRemove([
                                              listViewTournamentRecord.reference
                                            ]),
                                          };
                                          await currentUserReference
                                              .update(usersUpdateData);
                                        },
                                      ),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

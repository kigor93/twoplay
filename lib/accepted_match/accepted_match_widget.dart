import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/push_notifications/push_notifications_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcceptedMatchWidget extends StatefulWidget {
  const AcceptedMatchWidget({
    Key key,
    this.loca,
  }) : super(key: key);

  final DocumentReference loca;

  @override
  _AcceptedMatchWidgetState createState() => _AcceptedMatchWidgetState();
}

class _AcceptedMatchWidgetState extends State<AcceptedMatchWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'acceptedMatch'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            logFirebaseEvent('ACCEPTED_MATCH_PAGE_Icon_mytbfnq1_ON_TAP');
            logFirebaseEvent('Icon_Navigate-Back');
            context.pop();
          },
          child: Icon(
            Icons.chevron_left,
            color: Colors.white,
            size: 24,
          ),
        ),
        title: Text(
          'Запросы',
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
          padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
          child: StreamBuilder<List<BookingRecord>>(
            stream: queryBookingRecord(
              queryBuilder: (bookingRecord) => bookingRecord
                  .where('Location', isEqualTo: widget.loca)
                  .where('Accepted', isEqualTo: true),
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
              List<BookingRecord> listViewBookingRecordList = snapshot.data;
              return ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: listViewBookingRecordList.length,
                itemBuilder: (context, listViewIndex) {
                  final listViewBookingRecord =
                      listViewBookingRecordList[listViewIndex];
                  return StreamBuilder<List<UsersRecord>>(
                    stream: queryUsersRecord(
                      queryBuilder: (usersRecord) => usersRecord.where('email',
                          isEqualTo: listViewBookingRecord.useremail),
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
                      List<UsersRecord> containerUsersRecordList = snapshot.data
                          .where((u) => u.uid != currentUserUid)
                          .toList();
                      // Return an empty Container when the document does not exist.
                      if (snapshot.data.isEmpty) {
                        return Container();
                      }
                      final containerUsersRecord =
                          containerUsersRecordList.isNotEmpty
                              ? containerUsersRecordList.first
                              : null;
                      return Container(
                        width: 100,
                        height: 130,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              onTap: () async {
                                logFirebaseEvent(
                                    'ACCEPTED_MATCH_PAGE_Row_zihsl1rd_ON_TAP');
                                logFirebaseEvent('Row_Navigate-To');
                                context.pushNamed('UserPage');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      containerUsersRecord.photoUrl,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 0, 0),
                                    child: Text(
                                      containerUsersRecord.displayName,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ACCEPTED_MATCH_PAGE_Icon_zia4dojw_ON_TAP');
                                      logFirebaseEvent('Icon_Launch-U-R-L');
                                      await launchURL(
                                          containerUsersRecord.phoneNumber);
                                    },
                                    child: Icon(
                                      Icons.phone,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 24,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    listViewBookingRecord.dateTime.toString(),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  StreamBuilder<List<OpenMatchRecord>>(
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<OpenMatchRecord>
                                          buttonOpenMatchRecordList =
                                          snapshot.data;
                                      // Return an empty Container when the document does not exist.
                                      if (snapshot.data.isEmpty) {
                                        return Container();
                                      }
                                      final buttonOpenMatchRecord =
                                          buttonOpenMatchRecordList.isNotEmpty
                                              ? buttonOpenMatchRecordList.first
                                              : null;
                                      return FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'ACCEPTED_MATCH_PAGE_ОТКЛОНИТЬ_BTN_ON_TAP');
                                          logFirebaseEvent(
                                              'Button_Backend-Call');
                                          await listViewBookingRecord.reference
                                              .delete();
                                          logFirebaseEvent(
                                              'Button_Backend-Call');
                                          await buttonOpenMatchRecord.reference
                                              .delete();
                                          logFirebaseEvent(
                                              'Button_Trigger-Push-Notification');
                                          triggerPushNotification(
                                            notificationTitle: 'Бронь отменена',
                                            notificationText:
                                                'К сожаоению локация отменила вашу бронь',
                                            notificationSound: 'default',
                                            userRefs: [
                                              containerUsersRecord.reference
                                            ],
                                            initialPageName: 'LocationPage',
                                            parameterData: {},
                                          );
                                        },
                                        text: 'Отклонить',
                                        options: FFButtonOptions(
                                          width: 130,
                                          height: 30,
                                          color: Color(0xFFE14C4E),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.white,
                                                  ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
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

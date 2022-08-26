import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/push_notifications/push_notifications_util.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class MatchFollowersWidget extends StatefulWidget {
  const MatchFollowersWidget({
    Key key,
    this.match,
  }) : super(key: key);

  final OpenMatchRecord match;

  @override
  _MatchFollowersWidgetState createState() => _MatchFollowersWidgetState();
}

class _MatchFollowersWidgetState extends State<MatchFollowersWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'matchFollowers'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            logFirebaseEvent('MATCH_FOLLOWERS_Icon_mfn7rcp8_ON_TAP');
            logFirebaseEvent('Icon_Navigate-Back');
            context.pop();
          },
          child: Icon(
            Icons.chevron_left_sharp,
            color: FlutterFlowTheme.of(context).primaryColor,
            size: 24,
          ),
        ),
        title: Text(
          'Уведомления',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Color(0xA1000000),
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Запросы на тренировку',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: StreamBuilder<List<UsersRecord>>(
                stream: queryUsersRecord(
                  queryBuilder: (usersRecord) => usersRecord.where(
                      'FutureMatch',
                      arrayContains: widget.match.reference),
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
                  List<UsersRecord> listViewUsersRecordList = snapshot.data;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewUsersRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewUsersRecord =
                          listViewUsersRecordList[listViewIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent(
                                'MATCH_FOLLOWERS_Container_jywv6y5g_ON_TA');
                            logFirebaseEvent('Container_Navigate-To');
                            context.pushNamed(
                              'UserPage',
                              queryParams: {
                                'detailsuser': serializeParam(
                                    listViewUsersRecord.reference,
                                    ParamType.DocumentReference),
                              }.withoutNulls,
                            );
                          },
                          child: Container(
                            width: 100,
                            height: 75,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'MATCH_FOLLOWERS_CircleImage_aiw5tc0h_ON_');
                                    logFirebaseEvent(
                                        'CircleImage_Expand-Image');
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        child: FlutterFlowExpandedImageView(
                                          image: Image.network(
                                            listViewUsersRecord.photoUrl,
                                            fit: BoxFit.contain,
                                          ),
                                          allowRotation: false,
                                          tag: listViewUsersRecord.photoUrl,
                                          useHeroAnimation: true,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: listViewUsersRecord.photoUrl,
                                    transitionOnUserGestures: true,
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        listViewUsersRecord.photoUrl,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Text(
                                    listViewUsersRecord.displayName,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'MATCH_FOLLOWERS_Icon_y367ufki_ON_TAP');
                                          logFirebaseEvent('Icon_Backend-Call');

                                          final usersUpdateData = {
                                            'FutureMatch':
                                                FieldValue.arrayRemove(
                                                    [widget.match.reference]),
                                            'futurematchaccept':
                                                FieldValue.arrayUnion(
                                                    [widget.match.reference]),
                                          };
                                          await listViewUsersRecord.reference
                                              .update(usersUpdateData);
                                          logFirebaseEvent('Icon_Backend-Call');

                                          final openMatchUpdateData = {
                                            'MatchFollowers':
                                                FieldValue.arrayUnion([
                                              listViewUsersRecord.reference
                                            ]),
                                          };
                                          await widget.match.reference
                                              .update(openMatchUpdateData);
                                          logFirebaseEvent(
                                              'Icon_Trigger-Push-Notification');
                                          triggerPushNotification(
                                            notificationTitle: 'Хей!',
                                            notificationText:
                                                'Заявка на матч принята!',
                                            notificationImageUrl:
                                                widget.match.userpic,
                                            notificationSound: 'default',
                                            userRefs: [
                                              listViewUsersRecord.reference
                                            ],
                                            initialPageName: 'MatchPage',
                                            parameterData: {
                                              'matchdetail':
                                                  widget.match.reference,
                                            },
                                          );
                                        },
                                        child: Icon(
                                          Icons.done,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 24,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'MATCH_FOLLOWERS_Icon_pnwfd3dy_ON_TAP');
                                          logFirebaseEvent('Icon_Backend-Call');

                                          final usersUpdateData = {
                                            'FutureMatch':
                                                FieldValue.arrayRemove(
                                                    [widget.match.reference]),
                                          };
                                          await listViewUsersRecord.reference
                                              .update(usersUpdateData);
                                        },
                                        child: Icon(
                                          Icons.cancel,
                                          color: Color(0xFFAFAFAF),
                                          size: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Принятые запросы',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: StreamBuilder<List<UsersRecord>>(
                stream: queryUsersRecord(
                  queryBuilder: (usersRecord) => usersRecord.where(
                      'futurematchaccept',
                      arrayContains: widget.match.reference),
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
                  List<UsersRecord> listViewUsersRecordList = snapshot.data;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewUsersRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewUsersRecord =
                          listViewUsersRecordList[listViewIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent(
                                'MATCH_FOLLOWERS_Container_ue8njef7_ON_TA');
                            logFirebaseEvent('Container_Navigate-To');
                            context.pushNamed(
                              'UserPage',
                              queryParams: {
                                'detailsuser': serializeParam(
                                    listViewUsersRecord.reference,
                                    ParamType.DocumentReference),
                              }.withoutNulls,
                            );
                          },
                          child: Container(
                            width: 100,
                            height: 75,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'MATCH_FOLLOWERS_CircleImage_pkksl8ee_ON_');
                                    logFirebaseEvent(
                                        'CircleImage_Expand-Image');
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        child: FlutterFlowExpandedImageView(
                                          image: Image.network(
                                            listViewUsersRecord.photoUrl,
                                            fit: BoxFit.contain,
                                          ),
                                          allowRotation: false,
                                          tag: listViewUsersRecord.photoUrl,
                                          useHeroAnimation: true,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: listViewUsersRecord.photoUrl,
                                    transitionOnUserGestures: true,
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        listViewUsersRecord.photoUrl,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Text(
                                    listViewUsersRecord.displayName,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'MATCH_FOLLOWERS_Icon_3d9s31f0_ON_TAP');
                                          logFirebaseEvent('Icon_Backend-Call');

                                          final usersUpdateData = {
                                            'futurematchaccept':
                                                FieldValue.arrayRemove(
                                                    [widget.match.reference]),
                                          };
                                          await listViewUsersRecord.reference
                                              .update(usersUpdateData);
                                          logFirebaseEvent('Icon_Backend-Call');

                                          final openMatchUpdateData = {
                                            'MatchFollowers':
                                                FieldValue.arrayRemove([
                                              listViewUsersRecord.reference
                                            ]),
                                          };
                                          await widget.match.reference
                                              .update(openMatchUpdateData);
                                        },
                                        child: Icon(
                                          Icons.cancel,
                                          color: Color(0xFFAFAFAF),
                                          size: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/push_notifications/push_notifications_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsWidget extends StatefulWidget {
  const NotificationsWidget({Key key}) : super(key: key);

  @override
  _NotificationsWidgetState createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Notifications'});
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
            logFirebaseEvent('NOTIFICATIONS_PAGE_Icon_fhqat7fr_ON_TAP');
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
          'Запросы',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Color(0xA1000000),
                fontSize: 18,
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
                    'Запросы в друзья',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: StreamBuilder<UsersRecord>(
                stream: UsersRecord.getDocument(currentUserReference),
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
                  final listViewUsersRecord = snapshot.data;
                  return Builder(
                    builder: (context) {
                      final requestsarray =
                          listViewUsersRecord.reuesttoFriend.toList();
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: requestsarray.length,
                        itemBuilder: (context, requestsarrayIndex) {
                          final requestsarrayItem =
                              requestsarray[requestsarrayIndex];
                          return Container(
                            width: 100,
                            height: 75,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 230,
                                  height: 75,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                  ),
                                  child: InkWell(
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'NOTIFICATIONS_PAGE_Row_y4ji9o3w_ON_TAP');
                                      logFirebaseEvent('Row_Navigate-To');
                                      context.pushNamed(
                                        'UserPage',
                                        queryParams: {
                                          'detailsuser': serializeParam(
                                              requestsarrayItem,
                                              ParamType.DocumentReference),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: StreamBuilder<UsersRecord>(
                                            stream: UsersRecord.getDocument(
                                                requestsarrayItem),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              final circleImageUsersRecord =
                                                  snapshot.data;
                                              return InkWell(
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'NOTIFICATIONS_CircleImage_kuuqqlga_ON_TA');
                                                  logFirebaseEvent(
                                                      'CircleImage_Navigate-To');
                                                  context.pushNamed(
                                                    'UserPage',
                                                    queryParams: {
                                                      'detailsuser': serializeParam(
                                                          circleImageUsersRecord
                                                              .reference,
                                                          ParamType
                                                              .DocumentReference),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Container(
                                                  width: 55,
                                                  height: 55,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    circleImageUsersRecord
                                                        .photoUrl,
                                                    fit: BoxFit.fitHeight,
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: StreamBuilder<UsersRecord>(
                                            stream: UsersRecord.getDocument(
                                                requestsarrayItem),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              final textUsersRecord =
                                                  snapshot.data;
                                              return InkWell(
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'NOTIFICATIONS_PAGE_Text_mdpkorj2_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Text_Navigate-To');
                                                  context.pushNamed(
                                                    'UserPage',
                                                    queryParams: {
                                                      'detailsuser': serializeParam(
                                                          requestsarrayItem,
                                                          ParamType
                                                              .DocumentReference),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Text(
                                                  textUsersRecord.displayName,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 12,
                                                      ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  height: 75,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 5, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30,
                                          buttonSize: 48,
                                          icon: Icon(
                                            Icons.person_add,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            size: 30,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'NOTIFICATIONS_PAGE_person_add_ICN_ON_TAP');
                                            logFirebaseEvent(
                                                'IconButton_Backend-Call');

                                            final usersUpdateData = {
                                              'ReuesttoFriend':
                                                  FieldValue.arrayRemove(
                                                      [requestsarrayItem]),
                                              'Followers':
                                                  FieldValue.arrayUnion(
                                                      [requestsarrayItem]),
                                            };
                                            await currentUserReference
                                                .update(usersUpdateData);
                                            logFirebaseEvent(
                                                'IconButton_Trigger-Push-Notification');
                                            triggerPushNotification(
                                              notificationTitle:
                                                  'Вашу заявку приняли!',
                                              notificationText:
                                                  'Пользователь, на которого вы подписались, принял вашу заявку',
                                              notificationImageUrl:
                                                  listViewUsersRecord.photoUrl,
                                              notificationSound: 'default',
                                              userRefs: [
                                                listViewUsersRecord.reference
                                              ],
                                              initialPageName: 'UserPage',
                                              parameterData: {
                                                'detailsuser':
                                                    listViewUsersRecord
                                                        .reference,
                                              },
                                            );
                                          },
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30,
                                          buttonSize: 48,
                                          icon: Icon(
                                            Icons.delete_forever_rounded,
                                            color: Color(0xFF696969),
                                            size: 30,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'NOTIFICATIONS_delete_forever_rounded_ICN');
                                            logFirebaseEvent(
                                                'IconButton_Backend-Call');

                                            final usersUpdateData = {
                                              'ReuesttoFriend':
                                                  FieldValue.arrayRemove(
                                                      [requestsarrayItem]),
                                            };
                                            await currentUserReference
                                                .update(usersUpdateData);
                                          },
                                        ),
                                      ],
                                    ),
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
          ],
        ),
      ),
    );
  }
}

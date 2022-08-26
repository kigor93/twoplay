import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FollowersPageWidget extends StatefulWidget {
  const FollowersPageWidget({Key key}) : super(key: key);

  @override
  _FollowersPageWidgetState createState() => _FollowersPageWidgetState();
}

class _FollowersPageWidgetState extends State<FollowersPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'FollowersPage'});
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
            logFirebaseEvent('FOLLOWERS_PAGE_PAGE_Icon_hvcx2li6_ON_TAP');
            logFirebaseEvent('Icon_Navigate-Back');
            context.pop();
          },
          child: Icon(
            Icons.chevron_left,
            color: FlutterFlowTheme.of(context).primaryColor,
            size: 24,
          ),
        ),
        title: Text(
          'Друзья',
          style: FlutterFlowTheme.of(context).title2,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
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
                      final fgh = listViewUsersRecord.followers.toList();
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: fgh.length,
                        itemBuilder: (context, fghIndex) {
                          final fghItem = fgh[fghIndex];
                          return Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Container(
                              width: 100,
                              height: 70,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 0, 0, 0),
                                    child: StreamBuilder<UsersRecord>(
                                      stream: UsersRecord.getDocument(fghItem),
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
                                        final circleImageUsersRecord =
                                            snapshot.data;
                                        return InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'FOLLOWERS_CircleImage_51zuxq0g_ON_TAP');
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
                                            width: 60,
                                            height: 60,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                              circleImageUsersRecord.photoUrl,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: StreamBuilder<UsersRecord>(
                                      stream: UsersRecord.getDocument(fghItem),
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
                                        final textUsersRecord = snapshot.data;
                                        return InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'FOLLOWERS_PAGE_PAGE_Text_igx34wuh_ON_TAP');
                                            logFirebaseEvent(
                                                'Text_Navigate-To');
                                            context.pushNamed(
                                              'UserPage',
                                              queryParams: {
                                                'detailsuser': serializeParam(
                                                    textUsersRecord.reference,
                                                    ParamType
                                                        .DocumentReference),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: Text(
                                            textUsersRecord.displayName,
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'FOLLOWERS_PAGE_PAGE_Icon_7tis4wo4_ON_TAP');
                                        logFirebaseEvent('Icon_Backend-Call');

                                        final usersUpdateData = {
                                          'Followers':
                                              FieldValue.arrayRemove([fghItem]),
                                        };
                                        await currentUserReference
                                            .update(usersUpdateData);
                                      },
                                      child: Icon(
                                        Icons.delete_forever,
                                        color: Color(0xFFBCBCBC),
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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

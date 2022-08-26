import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMatchesWidget extends StatefulWidget {
  const MyMatchesWidget({Key key}) : super(key: key);

  @override
  _MyMatchesWidgetState createState() => _MyMatchesWidgetState();
}

class _MyMatchesWidgetState extends State<MyMatchesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'MyMatches'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Мои матчи',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).tertiaryColor,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                child: StreamBuilder<List<OpenMatchRecord>>(
                  stream: queryOpenMatchRecord(
                    queryBuilder: (openMatchRecord) => openMatchRecord
                        .where('UserCreator', isEqualTo: currentUserReference),
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
                    List<OpenMatchRecord> listViewOpenMatchRecordList =
                        snapshot.data;
                    if (listViewOpenMatchRecordList.isEmpty) {
                      return Center(
                        child: Image.network(
                          '',
                        ),
                      );
                    }
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewOpenMatchRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewOpenMatchRecord =
                            listViewOpenMatchRecordList[listViewIndex];
                        return InkWell(
                          onTap: () async {
                            logFirebaseEvent(
                                'MY_MATCHES_PAGE_ListTile_1b8s29k4_ON_TAP');
                            logFirebaseEvent('ListTile_Navigate-To');
                            context.pushNamed(
                              'Mymatchpage',
                              queryParams: {
                                'matchdetail': serializeParam(
                                    listViewOpenMatchRecord.reference,
                                    ParamType.DocumentReference),
                              }.withoutNulls,
                            );
                          },
                          child: Slidable(
                            actionPane: const SlidableScrollActionPane(),
                            secondaryActions: [
                              IconSlideAction(
                                caption: 'Удалить матч',
                                color: Color(0xFF4B39EF),
                                icon: Icons.delete,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'MY_MATCHES_SlidableActionWidget_2am8r0tn');
                                  logFirebaseEvent(
                                      'SlidableActionWidget_Backend-Call');
                                  await listViewOpenMatchRecord.reference
                                      .delete();
                                },
                              ),
                            ],
                            child: ListTile(
                              title: Text(
                                listViewOpenMatchRecord.sportType,
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                              subtitle: Text(
                                dateTimeFormat('d/M H:mm',
                                    listViewOpenMatchRecord.dateAndTimeOfMatch),
                                style: FlutterFlowTheme.of(context).subtitle2,
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF303030),
                                size: 20,
                              ),
                              tileColor: Color(0xFFF5F5F5),
                              dense: false,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

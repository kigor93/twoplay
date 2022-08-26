import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class UserMatchesWidget extends StatefulWidget {
  const UserMatchesWidget({
    Key key,
    this.user,
  }) : super(key: key);

  final DocumentReference user;

  @override
  _UserMatchesWidgetState createState() => _UserMatchesWidgetState();
}

class _UserMatchesWidgetState extends State<UserMatchesWidget> {
  PagingController<DocumentSnapshot, OpenMatchRecord> _pagingController;
  Query _pagingQuery;
  List<StreamSubscription> _streamSubscriptions = [];

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'UserMatches'});
  }

  @override
  void dispose() {
    _streamSubscriptions.forEach((s) => s?.cancel());
    super.dispose();
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
                child: PagedListView<DocumentSnapshot<Object>, OpenMatchRecord>(
                  pagingController: () {
                    final Query<Object> Function(Query<Object>) queryBuilder =
                        (openMatchRecord) => openMatchRecord
                            .where('UserCreator', isEqualTo: widget.user);
                    if (_pagingController != null) {
                      final query = queryBuilder(OpenMatchRecord.collection);
                      if (query != _pagingQuery) {
                        // The query has changed
                        _pagingQuery = query;
                        _streamSubscriptions.forEach((s) => s?.cancel());
                        _streamSubscriptions.clear();
                        _pagingController.refresh();
                      }
                      return _pagingController;
                    }

                    _pagingController = PagingController(firstPageKey: null);
                    _pagingQuery = queryBuilder(OpenMatchRecord.collection);
                    _pagingController.addPageRequestListener((nextPageMarker) {
                      queryOpenMatchRecordPage(
                        queryBuilder: (openMatchRecord) => openMatchRecord
                            .where('UserCreator', isEqualTo: widget.user),
                        nextPageMarker: nextPageMarker,
                        pageSize: 25,
                        isStream: true,
                      ).then((page) {
                        _pagingController.appendPage(
                          page.data,
                          page.nextPageMarker,
                        );
                        final streamSubscription =
                            page.dataStream?.listen((data) {
                          final itemIndexes = _pagingController.itemList
                              .asMap()
                              .map((k, v) => MapEntry(v.reference.id, k));
                          data.forEach((item) {
                            final index = itemIndexes[item.reference.id];
                            final items = _pagingController.itemList;
                            if (index != null) {
                              items.replaceRange(index, index + 1, [item]);
                              _pagingController.itemList = {
                                for (var item in items) item.reference: item
                              }.values.toList();
                            }
                          });
                          setState(() {});
                        });
                        _streamSubscriptions.add(streamSubscription);
                      });
                    });
                    return _pagingController;
                  }(),
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  builderDelegate: PagedChildBuilderDelegate<OpenMatchRecord>(
                    // Customize what your widget looks like when it's loading the first page.
                    firstPageProgressIndicatorBuilder: (_) => Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    noItemsFoundIndicatorBuilder: (_) => Center(
                      child: Image.network(
                        '',
                      ),
                    ),
                    itemBuilder: (context, _, listViewIndex) {
                      final listViewOpenMatchRecord =
                          _pagingController.itemList[listViewIndex];
                      return InkWell(
                        onTap: () async {
                          logFirebaseEvent(
                              'USER_MATCHES_ListTile_eiegskpy_ON_TAP');
                          logFirebaseEvent('ListTile_Navigate-To');
                          context.pushNamed(
                            'MatchPage',
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
                                    'USER_MATCHES_SlidableActionWidget_rn9xgk');
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
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

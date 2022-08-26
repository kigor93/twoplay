import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FutureMatchesWidget extends StatefulWidget {
  const FutureMatchesWidget({Key key}) : super(key: key);

  @override
  _FutureMatchesWidgetState createState() => _FutureMatchesWidgetState();
}

class _FutureMatchesWidgetState extends State<FutureMatchesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'FutureMatches'});
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
            logFirebaseEvent('FUTURE_MATCHES_PAGE_Icon_0fempqhw_ON_TAP');
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
          'Предстоящие матчи',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Lexend Deca',
                color: Color(0xFF282828),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
            child: InkWell(
              onTap: () async {
                logFirebaseEvent('FUTURE_MATCHES_PAGE_Row_asvq2dsk_ON_TAP');
                logFirebaseEvent('Row_Navigate-To');
                context.pushNamed('MyMatches');
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Мои матчи',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 22,
                        ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    size: 24,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 2, 15, 0),
            child: InkWell(
              onTap: () async {
                logFirebaseEvent('FUTURE_MATCHES_PAGE_Row_kd0ee2ru_ON_TAP');
                logFirebaseEvent('Row_Navigate-To');
                context.pushNamed('UserFollowsMatch');
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Матчи на которые я подписан',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 22,
                        ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    size: 24,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

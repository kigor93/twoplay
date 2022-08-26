import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UsersearchWidget extends StatefulWidget {
  const UsersearchWidget({Key key}) : super(key: key);

  @override
  _UsersearchWidgetState createState() => _UsersearchWidgetState();
}

class _UsersearchWidgetState extends State<UsersearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Введите ник-нейм пользователя',
            style: FlutterFlowTheme.of(context).bodyText1,
          ),
        ],
      ),
    );
  }
}

import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    setState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Builder(
            builder: (context) => Image.asset(
              'assets/images/__(350__800_)-2.gif',
              fit: BoxFit.cover,
            ),
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'LogIn': (data) async => LogInWidget(
        user: await getDocumentParameter(data, 'user', UsersRecord.serializer),
      ),
  'ProfilePage': (data) async => NavBarPage(initialPage: 'ProfilePage'),
  'Complte_profile': (data) async => ComplteProfileWidget(),
  'CreateMatch': (data) async => CreateMatchWidget(),
  'AllMatches': (data) async => NavBarPage(initialPage: 'AllMatches'),
  'LocationPage': (data) async => LocationPageWidget(
        locationdetails: getParameter(data, 'locationdetails'),
      ),
  'Locations': (data) async => LocationsWidget(),
  'SuccesMatchCreated': (data) async => SuccesMatchCreatedWidget(),
  'UserPage': (data) async => UserPageWidget(
        detailsuser: getParameter(data, 'detailsuser'),
      ),
  'FollowersPage': (data) async => FollowersPageWidget(),
  'MatchPage': (data) async => MatchPageWidget(
        matchdetail: getParameter(data, 'matchdetail'),
      ),
  'Notifications': (data) async => NotificationsWidget(),
  'ChatPage': (data) async => ChatPageWidget(
        chatUser: await getDocumentParameter(
            data, 'chatUser', UsersRecord.serializer),
        chatRef: getParameter(data, 'chatRef'),
      ),
  'AllChats': (data) async => NavBarPage(initialPage: 'AllChats'),
  'MyMatches': (data) async => MyMatchesWidget(),
  'Settings': (data) async => SettingsWidget(),
  'CreatingnewMatch': (data) async =>
      NavBarPage(initialPage: 'CreatingnewMatch'),
  'FilterMatches': (data) async => FilterMatchesWidget(
        flt: getParameter(data, 'flt'),
      ),
  'EditProfile': (data) async => EditProfileWidget(),
  'AllNotifications': (data) async => AllNotificationsWidget(),
  'CreateMatchLocation': (data) async => CreateMatchLocationWidget(
        book: getParameter(data, 'book'),
      ),
  'matchFollowers': (data) async => MatchFollowersWidget(
        match: await getDocumentParameter(
            data, 'match', OpenMatchRecord.serializer),
      ),
  'Shops': (data) async => ShopsWidget(),
  'ShopPage': (data) async => ShopPageWidget(
        shopdetails: getParameter(data, 'shopdetails'),
      ),
  'LikedLocations': (data) async => LikedLocationsWidget(
        usr: await getDocumentParameter(data, 'usr', UsersRecord.serializer),
      ),
  'AllMatchesMap': (data) async => AllMatchesMapWidget(),
  'LocationsMAp': (data) async => LocationsMApWidget(),
  'SuccesSignUp': (data) async => SuccesSignUpWidget(),
  'SucceLogIn': (data) async => SucceLogInWidget(),
  'UserFollowsMatch': (data) async => UserFollowsMatchWidget(
        user: getParameter(data, 'user'),
      ),
  'LocationAdmin': (data) async => LocationAdminWidget(
        loca: getParameter(data, 'loca'),
      ),
  'SearchUser': (data) async => SearchUserWidget(),
  'FutureMatches': (data) async => FutureMatchesWidget(),
  'Turnir': (data) async => TurnirWidget(
        turnir: await getDocumentParameter(
            data, 'turnir', TournamentRecord.serializer),
      ),
  'mymatches': (data) async => MymatchesWidget(),
  'Mymatchpage': (data) async => MymatchpageWidget(
        matchdetail: getParameter(data, 'matchdetail'),
      ),
  'Myturnirs': (data) async => MyturnirsWidget(),
  'ShopsMAp': (data) async => ShopsMApWidget(),
  'createTurni': (data) async => CreateTurniWidget(
        turnir: await getDocumentParameter(
            data, 'turnir', TournamentRecord.serializer),
      ),
  'FilteLocations': (data) async => FilteLocationsWidget(
        flt: getParameter(data, 'flt'),
      ),
  'changePhoto': (data) async => ChangePhotoWidget(),
  'SignUpCopy': (data) async => SignUpCopyWidget(),
  'policy': (data) async => PolicyWidget(),
  'about': (data) async => AboutWidget(),
  'SuccSignup': (data) async => SuccSignupWidget(),
  'UserMatches': (data) async => UserMatchesWidget(
        user: getParameter(data, 'user'),
      ),
  'atchmap': (data) async => AtchmapWidget(),
  'LikedLocationsUser': (data) async => LikedLocationsUserWidget(
        user: getParameter(data, 'user'),
      ),
  'LoginAdmin': (data) async => LoginAdminWidget(
        user: await getDocumentParameter(data, 'user', UsersRecord.serializer),
      ),
  'LocationAllRequests': (data) async => LocationAllRequestsWidget(
        loca: getParameter(data, 'loca'),
      ),
  'acceptedMatch': (data) async => AcceptedMatchWidget(
        loca: getParameter(data, 'loca'),
      ),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}

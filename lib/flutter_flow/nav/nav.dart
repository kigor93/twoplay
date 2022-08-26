import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';
import '../../auth/firebase_user_provider.dart';
import '../../backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;

import '../../index.dart';
import '../../main.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  TwoplayappFirebaseUser initialUser;
  TwoplayappFirebaseUser user;
  bool showSplashImage = true;
  String _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(TwoplayappFirebaseUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? NavBarPage() : LogInWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : LogInWidget(),
          routes: [
            FFRoute(
              name: 'HomePage',
              path: 'homePage',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'HomePage')
                  : HomePageWidget(),
            ),
            FFRoute(
              name: 'LogIn',
              path: 'logIn',
              asyncParams: {
                'user': getDoc('Users', UsersRecord.serializer),
              },
              builder: (context, params) => LogInWidget(
                user: params.getParam('user', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'ProfilePage',
              path: 'profilePage',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'ProfilePage')
                  : ProfilePageWidget(),
            ),
            FFRoute(
              name: 'Complte_profile',
              path: 'complteProfile',
              builder: (context, params) => ComplteProfileWidget(),
            ),
            FFRoute(
              name: 'CreateMatch',
              path: 'createMatch',
              builder: (context, params) => CreateMatchWidget(),
            ),
            FFRoute(
              name: 'AllMatches',
              path: 'allMatches',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'AllMatches')
                  : AllMatchesWidget(),
            ),
            FFRoute(
              name: 'LocationPage',
              path: 'locationPage',
              builder: (context, params) => LocationPageWidget(
                locationdetails: params.getParam('locationdetails',
                    ParamType.DocumentReference, 'Locations'),
              ),
            ),
            FFRoute(
              name: 'Locations',
              path: 'locations',
              builder: (context, params) => LocationsWidget(),
            ),
            FFRoute(
              name: 'SuccesMatchCreated',
              path: 'succesMatchCreated',
              builder: (context, params) => SuccesMatchCreatedWidget(),
            ),
            FFRoute(
              name: 'UserPage',
              path: 'userPage',
              builder: (context, params) => UserPageWidget(
                detailsuser: params.getParam(
                    'detailsuser', ParamType.DocumentReference, 'Users'),
              ),
            ),
            FFRoute(
              name: 'FollowersPage',
              path: 'followersPage',
              builder: (context, params) => FollowersPageWidget(),
            ),
            FFRoute(
              name: 'MatchPage',
              path: 'matchPage',
              builder: (context, params) => MatchPageWidget(
                matchdetail: params.getParam(
                    'matchdetail', ParamType.DocumentReference, 'OpenMatch'),
              ),
            ),
            FFRoute(
              name: 'Notifications',
              path: 'notifications',
              builder: (context, params) => NotificationsWidget(),
            ),
            FFRoute(
              name: 'ChatPage',
              path: 'chatPage',
              asyncParams: {
                'chatUser': getDoc('Users', UsersRecord.serializer),
              },
              builder: (context, params) => ChatPageWidget(
                chatUser: params.getParam('chatUser', ParamType.Document),
                chatRef: params.getParam(
                    'chatRef', ParamType.DocumentReference, 'chats'),
              ),
            ),
            FFRoute(
              name: 'AllChats',
              path: 'allChats',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'AllChats')
                  : AllChatsWidget(),
            ),
            FFRoute(
              name: 'MyMatches',
              path: 'myMatches',
              builder: (context, params) => MyMatchesWidget(),
            ),
            FFRoute(
              name: 'Settings',
              path: 'settings',
              builder: (context, params) => SettingsWidget(),
            ),
            FFRoute(
              name: 'CreatingnewMatch',
              path: 'creatingnewMatch',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'CreatingnewMatch')
                  : CreatingnewMatchWidget(),
            ),
            FFRoute(
              name: 'FilterMatches',
              path: 'filterMatches',
              builder: (context, params) => FilterMatchesWidget(
                flt: params.getParam(
                    'flt', ParamType.DocumentReference, 'OpenMatch'),
              ),
            ),
            FFRoute(
              name: 'EditProfile',
              path: 'editProfile',
              builder: (context, params) => EditProfileWidget(),
            ),
            FFRoute(
              name: 'AllNotifications',
              path: 'allNotifications',
              builder: (context, params) => AllNotificationsWidget(),
            ),
            FFRoute(
              name: 'CreateMatchLocation',
              path: 'createMatchLocation',
              builder: (context, params) => CreateMatchLocationWidget(
                book: params.getParam(
                    'book', ParamType.DocumentReference, 'Booking'),
              ),
            ),
            FFRoute(
              name: 'matchFollowers',
              path: 'matchFollowers',
              asyncParams: {
                'match': getDoc('OpenMatch', OpenMatchRecord.serializer),
              },
              builder: (context, params) => MatchFollowersWidget(
                match: params.getParam('match', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Shops',
              path: 'shops',
              builder: (context, params) => ShopsWidget(),
            ),
            FFRoute(
              name: 'ShopPage',
              path: 'shopPage',
              builder: (context, params) => ShopPageWidget(
                shopdetails: params.getParam(
                    'shopdetails', ParamType.DocumentReference, 'ShopList'),
              ),
            ),
            FFRoute(
              name: 'LikedLocations',
              path: 'likedLocations',
              asyncParams: {
                'usr': getDoc('Users', UsersRecord.serializer),
              },
              builder: (context, params) => LikedLocationsWidget(
                usr: params.getParam('usr', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'AllMatchesMap',
              path: 'allMatchesMap',
              builder: (context, params) => AllMatchesMapWidget(),
            ),
            FFRoute(
              name: 'LocationsMAp',
              path: 'locationsMAp',
              builder: (context, params) => LocationsMApWidget(),
            ),
            FFRoute(
              name: 'SuccesSignUp',
              path: 'succesSignUp',
              builder: (context, params) => SuccesSignUpWidget(),
            ),
            FFRoute(
              name: 'SucceLogIn',
              path: 'succeLogIn',
              builder: (context, params) => SucceLogInWidget(),
            ),
            FFRoute(
              name: 'UserFollowsMatch',
              path: 'userFollowsMatch',
              builder: (context, params) => UserFollowsMatchWidget(
                user: params.getParam(
                    'user', ParamType.DocumentReference, 'Users'),
              ),
            ),
            FFRoute(
              name: 'LocationAdmin',
              path: 'locationAdmin',
              builder: (context, params) => LocationAdminWidget(
                loca: params.getParam(
                    'loca', ParamType.DocumentReference, 'Locations'),
              ),
            ),
            FFRoute(
              name: 'SearchUser',
              path: 'searchUser',
              builder: (context, params) => SearchUserWidget(),
            ),
            FFRoute(
              name: 'FutureMatches',
              path: 'futureMatches',
              builder: (context, params) => FutureMatchesWidget(),
            ),
            FFRoute(
              name: 'Turnir',
              path: 'turnir',
              asyncParams: {
                'turnir': getDoc('Tournament', TournamentRecord.serializer),
              },
              builder: (context, params) => TurnirWidget(
                turnir: params.getParam('turnir', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'mymatches',
              path: 'mymatches',
              builder: (context, params) => MymatchesWidget(),
            ),
            FFRoute(
              name: 'Mymatchpage',
              path: 'mymatchpage',
              builder: (context, params) => MymatchpageWidget(
                matchdetail: params.getParam(
                    'matchdetail', ParamType.DocumentReference, 'OpenMatch'),
              ),
            ),
            FFRoute(
              name: 'Myturnirs',
              path: 'myturnirs',
              builder: (context, params) => MyturnirsWidget(),
            ),
            FFRoute(
              name: 'ShopsMAp',
              path: 'shopsMAp',
              builder: (context, params) => ShopsMApWidget(),
            ),
            FFRoute(
              name: 'createTurni',
              path: 'createTurni',
              asyncParams: {
                'turnir': getDoc('Tournament', TournamentRecord.serializer),
              },
              builder: (context, params) => CreateTurniWidget(
                turnir: params.getParam('turnir', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'FilteLocations',
              path: 'filteLocations',
              builder: (context, params) => FilteLocationsWidget(
                flt: params.getParam(
                    'flt', ParamType.DocumentReference, 'OpenMatch'),
              ),
            ),
            FFRoute(
              name: 'changePhoto',
              path: 'changePhoto',
              builder: (context, params) => ChangePhotoWidget(),
            ),
            FFRoute(
              name: 'SignUpCopy',
              path: 'signUpCopy',
              builder: (context, params) => SignUpCopyWidget(),
            ),
            FFRoute(
              name: 'policy',
              path: 'policy',
              builder: (context, params) => PolicyWidget(),
            ),
            FFRoute(
              name: 'about',
              path: 'about',
              builder: (context, params) => AboutWidget(),
            ),
            FFRoute(
              name: 'SuccSignup',
              path: 'succSignup',
              builder: (context, params) => SuccSignupWidget(),
            ),
            FFRoute(
              name: 'UserMatches',
              path: 'userMatches',
              builder: (context, params) => UserMatchesWidget(
                user: params.getParam(
                    'user', ParamType.DocumentReference, 'Users'),
              ),
            ),
            FFRoute(
              name: 'atchmap',
              path: 'atchmap',
              builder: (context, params) => AtchmapWidget(),
            ),
            FFRoute(
              name: 'LikedLocationsUser',
              path: 'likedLocationsUser',
              builder: (context, params) => LikedLocationsUserWidget(
                user: params.getParam(
                    'user', ParamType.DocumentReference, 'Users'),
              ),
            ),
            FFRoute(
              name: 'LoginAdmin',
              path: 'loginAdmin',
              asyncParams: {
                'user': getDoc('Users', UsersRecord.serializer),
              },
              builder: (context, params) => LoginAdminWidget(
                user: params.getParam('user', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'LocationAllRequests',
              path: 'locationAllRequests',
              builder: (context, params) => LocationAllRequestsWidget(
                loca: params.getParam(
                    'loca', ParamType.DocumentReference, 'Locations'),
              ),
            ),
            FFRoute(
              name: 'acceptedMatch',
              path: 'acceptedMatch',
              builder: (context, params) => AcceptedMatchWidget(
                loca: params.getParam(
                    'loca', ParamType.DocumentReference, 'Locations'),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ).toRoute(appStateNotifier),
      ],
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String> {
  Map<String, String> get withoutNulls =>
      Map.fromEntries(entries.where((e) => e.value != null));
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  bool get isEmpty => state.allParams.isEmpty;
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key](param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam(
    String paramName,
    ParamType type, [
    String collectionName,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam(param, type, collectionName);
  }
}

class FFRoute {
  const FFRoute({
    @required this.name,
    @required this.path,
    @required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/logIn';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Builder(
                    builder: (context) => Image.asset(
                      'assets/images/__(350__800_)-2.gif',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

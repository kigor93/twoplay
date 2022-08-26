import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TwoplayappFirebaseUser {
  TwoplayappFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

TwoplayappFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TwoplayappFirebaseUser> twoplayappFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TwoplayappFirebaseUser>(
            (user) => currentUser = TwoplayappFirebaseUser(user));

import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _filterlevel = prefs.getString('ff_filterlevel') ?? _filterlevel;
  }

  SharedPreferences prefs;

  String sportfilter = '';

  String levelfilter = '';

  String LocationFilter = '';

  String _filterlevel = '';
  String get filterlevel => _filterlevel;
  set filterlevel(String _value) {
    _filterlevel = _value;
    prefs.setString('ff_filterlevel', _value);
  }

  String locatiomadress = '';

  LatLng locationLAT;
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

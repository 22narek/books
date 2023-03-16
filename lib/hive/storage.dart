import 'package:hive/hive.dart';

class Storage {
  static final Storage _singleton = Storage._internal();

  factory Storage() {
    return _singleton;
  }

  Storage._internal();
  final String _allboxstext = 'allbox';
  late Box _favoritesBox;
  List _allbox = [];
  List get favorites => _allbox;
  set favorites(List setfavoritlist) {
    _allbox = setfavoritlist;
    _favoritesBox.put(_allboxstext, _allbox);
  }

  init() async {
    _favoritesBox = await Hive.openBox('favorites');
    final mystartvalue = _favoritesBox.get(_allboxstext);
    if (mystartvalue != null) {
      _allbox = mystartvalue;
    }
  }
}

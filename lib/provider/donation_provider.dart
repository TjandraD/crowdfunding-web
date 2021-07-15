import 'package:flutter/foundation.dart';

class DonationProvider extends ChangeNotifier {
  bool? _isAnonym = false;

  bool? get isAnonym => _isAnonym;
  set isAnonym(bool? newValue) {
    _isAnonym = newValue;
    notifyListeners();
  }
}

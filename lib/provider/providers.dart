import 'package:flutter/foundation.dart';

final class Providers extends ChangeNotifier {
  int selectedIndex = 0;
  taskOnTap({required int index}) {
    selectedIndex = index;
    notifyListeners();
  }
}

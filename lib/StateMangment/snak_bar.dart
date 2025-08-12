import 'package:flutter_riverpod/flutter_riverpod.dart';

class SnackBarVisibilityNotifier extends StateNotifier<bool> {
  SnackBarVisibilityNotifier() : super(false);

  void show() => state = true;
  void hide() => state = false;
}

final snackBarVisibilityProvider =
    StateNotifierProvider<SnackBarVisibilityNotifier, bool>(
      (ref) => SnackBarVisibilityNotifier(),
    );

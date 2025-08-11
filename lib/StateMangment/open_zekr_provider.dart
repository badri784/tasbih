import 'package:flutter_riverpod/flutter_riverpod.dart';

class OpenZekrSecreenProvider extends StateNotifier<String> {
  OpenZekrSecreenProvider() : super('');
  void setselected(String result) {
    state = result;
  }
}

final selectedzekr = StateNotifierProvider<OpenZekrSecreenProvider, String>(
  (_) => OpenZekrSecreenProvider(),
);

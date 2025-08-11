import 'package:flutter_riverpod/flutter_riverpod.dart';

class OpenZekrProvider extends StateNotifier<String> {
  OpenZekrProvider() : super('');
  void setselected(String result) {
    state = result;
  }
}

final selectedzekr = StateNotifierProvider<OpenZekrProvider, String>(
  (_) => OpenZekrProvider(),
);

import 'package:flutter_riverpod/flutter_riverpod.dart';

class OpenZekrProvider extends StateNotifier<String> {
  OpenZekrProvider() : super('');

  void setSelected(String zekr) => state = zekr;
}

final selectedzekrprovider = StateNotifierProvider<OpenZekrProvider, String>((
  _,
) {
  return OpenZekrProvider();
});

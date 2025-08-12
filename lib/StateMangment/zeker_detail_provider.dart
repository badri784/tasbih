import 'package:flutter_riverpod/flutter_riverpod.dart';

class ZekerDetailProvider extends StateNotifier<int> {
  ZekerDetailProvider(int initalValue) : super(initalValue);

  void countdown() {
    state--;
  }

  void zeroOrLess() {
    state = 0;
  }
}

final zekerdetail = StateNotifierProvider.family<ZekerDetailProvider, int, int>(
  (ref, repeatValue) {
    return ZekerDetailProvider(repeatValue);
  },
);

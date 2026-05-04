import 'dart:async';
import 'dart:ui';

class ResendTimerHelper {
  Timer? _timer;
  int _remainingSeconds;
  final int maxSeconds;
  final VoidCallback onTick;
  final VoidCallback onCompleted;

  ResendTimerHelper({
    this.maxSeconds = 30,
    required this.onTick,
    required this.onCompleted,
  }) : _remainingSeconds = maxSeconds;

  int get remainingSeconds => _remainingSeconds;

  bool get isCompleted => _remainingSeconds == 0;

  void start() {
    _remainingSeconds = maxSeconds;
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds == 0) {
        timer.cancel();
        onCompleted();
      } else {
        _remainingSeconds--;
        onTick();
      }
    });
  }

  void dispose() {
    _timer?.cancel();
  }
}

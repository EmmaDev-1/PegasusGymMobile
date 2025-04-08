// domain/otp_timer_provider.dart

import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimerNotifier extends StateNotifier<int> {
  TimerNotifier({required int initialSeconds}) : super(initialSeconds) {
    _startTimer();
  }

  Timer? _timer;

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state > 0) {
        state = state - 1;
      } else {
        timer.cancel();
      }
    });
  }

  // Método para reiniciar el temporizador, por ejemplo, al reenviar el OTP.
  void resetTimer(int seconds) {
    _timer?.cancel();
    state = seconds;
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

// Provider que se usará en la UI para mostrar el tiempo restante.
final otpTimerProvider = StateNotifierProvider<TimerNotifier, int>((ref) {
  return TimerNotifier(initialSeconds: 55);
});

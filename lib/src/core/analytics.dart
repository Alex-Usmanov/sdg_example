// stub analytics/error reporting
import 'dart:developer';

class Analytics {
  static void logEvent(String eventName, {Map<String, String>? parameters}) {
    log('Analytics event: $eventName. Params: $parameters');
  }

  static void reportError(Object error, StackTrace stackTrace) {
    log('Analytics error: $error. Stack trace: $stackTrace');
  }
}

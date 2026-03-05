import 'dart:convert';
import 'package:flutter/foundation.dart';

class PrettyLogger {
  static const reset = '\x1B[0m';
  static const keyColor = '\x1B[36m';
  static const stringColor = '\x1B[32m';
  static const numberColor = '\x1B[33m';
  static const boolColor = '\x1B[35m';
  static const bracketColor = '\x1B[37m';

  static void printJson(dynamic data) {
    try {
      const encoder = JsonEncoder.withIndent('  ');
      String pretty = encoder.convert(data);

      String colored = pretty
          .replaceAllMapped(
            RegExp(r'"(.*?)":'),
            (m) => '$keyColor"${m[1]}"$reset:',
          )
          .replaceAllMapped(
            RegExp(r': "(.*?)"'),
            (m) => ': $stringColor"${m[1]}"$reset',
          )
          .replaceAllMapped(
            RegExp(r': (\d+)'),
            (m) => ': $numberColor${m[1]}$reset',
          )
          .replaceAllMapped(
            RegExp(r': (true|false|null)'),
            (m) => ': $boolColor${m[1]}$reset',
          )
          .replaceAll('{', '$bracketColor{$reset')
          .replaceAll('}', '$bracketColor}$reset');

      debugPrint(colored);
    } catch (e) {
      debugPrint(data.toString());
    }
  }
}

import 'package:app/notifiers/auto_responses_notifier.dart';
import 'package:app/notifiers/settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoResponsesProvider =
    ChangeNotifierProvider((ref) => AutoResponsesNotifier());
final settingsProvider = ChangeNotifierProvider((ref) => Settings());

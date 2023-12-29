import 'package:app/notifiers/settings_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final settingsProvider = ChangeNotifierProvider((ref) => Settings());

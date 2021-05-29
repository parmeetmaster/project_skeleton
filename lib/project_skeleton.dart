
import 'dart:async';

import 'package:flutter/services.dart';

class ProjectSkeleton {
  static const MethodChannel _channel =
      const MethodChannel('project_skeleton');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

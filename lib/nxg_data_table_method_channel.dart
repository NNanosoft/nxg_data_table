import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'nxg_data_table_platform_interface.dart';

/// An implementation of [NxgDataTablePlatform] that uses method channels.
class MethodChannelNxgDataTable extends NxgDataTablePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('nxg_data_table');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

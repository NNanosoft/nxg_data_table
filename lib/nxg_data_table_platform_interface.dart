import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'nxg_data_table_method_channel.dart';

abstract class NxgDataTablePlatform extends PlatformInterface {
  /// Constructs a NxgDataTablePlatform.
  NxgDataTablePlatform() : super(token: _token);

  static final Object _token = Object();

  static NxgDataTablePlatform _instance = MethodChannelNxgDataTable();

  /// The default instance of [NxgDataTablePlatform] to use.
  ///
  /// Defaults to [MethodChannelNxgDataTable].
  static NxgDataTablePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NxgDataTablePlatform] when
  /// they register themselves.
  static set instance(NxgDataTablePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

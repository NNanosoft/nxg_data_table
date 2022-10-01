
import 'nxg_data_table_platform_interface.dart';

class NxgDataTable {
  Future<String?> getPlatformVersion() {
    return NxgDataTablePlatform.instance.getPlatformVersion();
  }
}

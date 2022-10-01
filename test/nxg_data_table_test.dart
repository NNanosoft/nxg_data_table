import 'package:flutter_test/flutter_test.dart';
import 'package:nxg_data_table/nxg_data_table.dart';
import 'package:nxg_data_table/nxg_data_table_platform_interface.dart';
import 'package:nxg_data_table/nxg_data_table_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNxgDataTablePlatform
    with MockPlatformInterfaceMixin
    implements NxgDataTablePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NxgDataTablePlatform initialPlatform = NxgDataTablePlatform.instance;

  test('$MethodChannelNxgDataTable is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNxgDataTable>());
  });

  test('getPlatformVersion', () async {
    NxgDataTable nxgDataTablePlugin = NxgDataTable();
    MockNxgDataTablePlatform fakePlatform = MockNxgDataTablePlatform();
    NxgDataTablePlatform.instance = fakePlatform;

    expect(await nxgDataTablePlugin.getPlatformVersion(), '42');
  });
}

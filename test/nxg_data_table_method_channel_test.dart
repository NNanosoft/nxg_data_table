import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nxg_data_table/nxg_data_table_method_channel.dart';

void main() {
  MethodChannelNxgDataTable platform = MethodChannelNxgDataTable();
  const MethodChannel channel = MethodChannel('nxg_data_table');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}

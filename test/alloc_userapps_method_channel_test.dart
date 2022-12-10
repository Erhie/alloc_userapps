import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:alloc_userapps/alloc_userapps_method_channel.dart';

void main() {
  MethodChannelAllocUserapps platform = MethodChannelAllocUserapps();
  const MethodChannel channel = MethodChannel('alloc_userapps');

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

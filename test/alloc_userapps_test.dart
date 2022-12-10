import 'package:flutter_test/flutter_test.dart';
import 'package:alloc_userapps/alloc_userapps.dart';
import 'package:alloc_userapps/alloc_userapps_platform_interface.dart';
import 'package:alloc_userapps/alloc_userapps_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAllocUserappsPlatform
    with MockPlatformInterfaceMixin
    implements AllocUserappsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AllocUserappsPlatform initialPlatform = AllocUserappsPlatform.instance;

  test('$MethodChannelAllocUserapps is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAllocUserapps>());
  });

  test('getPlatformVersion', () async {
    AllocUserapps allocUserappsPlugin = AllocUserapps();
    MockAllocUserappsPlatform fakePlatform = MockAllocUserappsPlatform();
    AllocUserappsPlatform.instance = fakePlatform;

    expect(await allocUserappsPlugin.getPlatformVersion(), '42');
  });
}

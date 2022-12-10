import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'alloc_userapps_platform_interface.dart';

/// An implementation of [AllocUserappsPlatform] that uses method channels.
class MethodChannelAllocUserapps extends AllocUserappsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('alloc_userapps');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

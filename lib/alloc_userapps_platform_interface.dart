import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'alloc_userapps_method_channel.dart';

abstract class AllocUserappsPlatform extends PlatformInterface {
  /// Constructs a AllocUserappsPlatform.
  AllocUserappsPlatform() : super(token: _token);

  static final Object _token = Object();

  static AllocUserappsPlatform _instance = MethodChannelAllocUserapps();

  /// The default instance of [AllocUserappsPlatform] to use.
  ///
  /// Defaults to [MethodChannelAllocUserapps].
  static AllocUserappsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AllocUserappsPlatform] when
  /// they register themselves.
  static set instance(AllocUserappsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

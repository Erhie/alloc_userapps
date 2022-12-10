
import 'alloc_userapps_platform_interface.dart';

class AllocUserapps {
  Future<String?> getPlatformVersion() {
    return AllocUserappsPlatform.instance.getPlatformVersion();
  }
}

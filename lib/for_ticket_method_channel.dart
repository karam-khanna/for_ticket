import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'for_ticket_platform_interface.dart';

/// An implementation of [ForTicketPlatform] that uses method channels.
class MethodChannelForTicket extends ForTicketPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('for_ticket');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'for_ticket_method_channel.dart';

abstract class ForTicketPlatform extends PlatformInterface {
  /// Constructs a ForTicketPlatform.
  ForTicketPlatform() : super(token: _token);

  static final Object _token = Object();

  static ForTicketPlatform _instance = MethodChannelForTicket();

  /// The default instance of [ForTicketPlatform] to use.
  ///
  /// Defaults to [MethodChannelForTicket].
  static ForTicketPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ForTicketPlatform] when
  /// they register themselves.
  static set instance(ForTicketPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}



import 'for_ticket_platform_interface.dart';

class ForTicket {
  Future<String?> getPlatformVersion() {
    return ForTicketPlatform.instance.getPlatformVersion();
  }
}

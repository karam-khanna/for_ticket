import 'package:flutter_test/flutter_test.dart';
import 'package:for_ticket/for_ticket.dart';
import 'package:for_ticket/for_ticket_platform_interface.dart';
import 'package:for_ticket/for_ticket_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockForTicketPlatform 
    with MockPlatformInterfaceMixin
    implements ForTicketPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ForTicketPlatform initialPlatform = ForTicketPlatform.instance;

  test('$MethodChannelForTicket is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelForTicket>());
  });

  test('getPlatformVersion', () async {
    ForTicket forTicketPlugin = ForTicket();
    MockForTicketPlatform fakePlatform = MockForTicketPlatform();
    ForTicketPlatform.instance = fakePlatform;
  
    expect(await forTicketPlugin.getPlatformVersion(), '42');
  });
}

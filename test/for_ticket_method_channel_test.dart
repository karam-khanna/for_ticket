import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:for_ticket/for_ticket_method_channel.dart';

void main() {
  MethodChannelForTicket platform = MethodChannelForTicket();
  const MethodChannel channel = MethodChannel('for_ticket');

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

#ifndef FLUTTER_PLUGIN_FOR_TICKET_PLUGIN_H_
#define FLUTTER_PLUGIN_FOR_TICKET_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace for_ticket {

class ForTicketPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  ForTicketPlugin();

  virtual ~ForTicketPlugin();

  // Disallow copy and assign.
  ForTicketPlugin(const ForTicketPlugin&) = delete;
  ForTicketPlugin& operator=(const ForTicketPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace for_ticket

#endif  // FLUTTER_PLUGIN_FOR_TICKET_PLUGIN_H_

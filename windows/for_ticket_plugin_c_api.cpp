#include "include/for_ticket/for_ticket_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "for_ticket_plugin.h"

void ForTicketPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  for_ticket::ForTicketPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

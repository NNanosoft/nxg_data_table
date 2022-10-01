#include "include/nxg_data_table/nxg_data_table_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "nxg_data_table_plugin.h"

void NxgDataTablePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  nxg_data_table::NxgDataTablePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

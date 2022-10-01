//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <nxg_data_table/nxg_data_table_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) nxg_data_table_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "NxgDataTablePlugin");
  nxg_data_table_plugin_register_with_registrar(nxg_data_table_registrar);
}
